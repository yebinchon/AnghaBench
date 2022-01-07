
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utp_task_req_desc {int input_param1; int req_header; } ;
struct ufs_hba {int nutrs; int dev; struct utp_task_req_desc* utmrdl_base_addr; } ;


 int dev_name (int ) ;
 int trace_ufshcd_upiu (int ,char const*,int *,int *) ;

__attribute__((used)) static void ufshcd_add_tm_upiu_trace(struct ufs_hba *hba, unsigned int tag,
  const char *str)
{
 int off = (int)tag - hba->nutrs;
 struct utp_task_req_desc *descp = &hba->utmrdl_base_addr[off];

 trace_ufshcd_upiu(dev_name(hba->dev), str, &descp->req_header,
   &descp->input_param1);
}
