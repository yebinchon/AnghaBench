
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ufshcd_lrb {int ucd_rsp_ptr; } ;
struct ufs_query_res {int response; } ;
struct TYPE_3__ {struct ufs_query_res response; } ;
struct TYPE_4__ {TYPE_1__ query; } ;
struct ufs_hba {TYPE_2__ dev_cmd; } ;


 int UPIU_RSP_CODE_OFFSET ;
 int ufshcd_get_rsp_upiu_result (int ) ;

__attribute__((used)) static int
ufshcd_check_query_response(struct ufs_hba *hba, struct ufshcd_lrb *lrbp)
{
 struct ufs_query_res *query_res = &hba->dev_cmd.query.response;


 query_res->response = ufshcd_get_rsp_upiu_result(lrbp->ucd_rsp_ptr) >>
    UPIU_RSP_CODE_OFFSET;
 return query_res->response;
}
