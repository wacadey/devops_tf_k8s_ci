aws_region   = "us-east-1"
project_name = "de-ai-12-devops-tf-eks-auto"
environment  = "dev"

kubernetes_version = "1.35"

# 운영 환경에서는 반드시 본인/회사 공인 IP만 허용
cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]

additional_admin_role_arns = []

# 비용을 더 낮추려면 Single-AZ로 변경할 수 있지만 현재는 v2와 동일한 Multi-AZ 효과를 유지
db_instance_class    = "db.t3.micro"
db_allocated_storage = 20

# ------------------------------------------------------------
# GitHub Actions CI, OIDC 관련 추가
# ------------------------------------------------------------
enable_github_actions_ci = true
github_owner             = "wacadey"          # 본 프로젝트의 깃허브의 소유주명
github_ci_repository     = "devops_tf_k8s_ci" # 본 프로젝트 저장소 이름
github_ci_branch         = "main" # 어던 브런치에서만 ECR push를 위한 인증 허가할것인가
# 최초라면 true, 만약 1번 이상 수행 => aws내 iam 본인 계정에 등록되어있다면 false로 설정
create_github_oidc_provider = true
# 조회발급 -> 추후 세팅 => git 로그인 처리후 조회 => 모두 숫자임
github_owner_id         = "139854118"
github_ci_repository_id = "1324590360"