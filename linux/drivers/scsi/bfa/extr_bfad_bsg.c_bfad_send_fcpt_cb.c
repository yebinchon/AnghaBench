
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fchs_s {int dummy; } ;
struct bfad_fcxp {int comp; int * bfa_fcxp; int rsp_len; int req_status; } ;
struct bfa_fcxp_s {int dummy; } ;
typedef int bfa_status_t ;


 int complete (int *) ;

void
bfad_send_fcpt_cb(void *bfad_fcxp, struct bfa_fcxp_s *fcxp, void *cbarg,
  bfa_status_t req_status, u32 rsp_len, u32 resid_len,
  struct fchs_s *rsp_fchs)
{
 struct bfad_fcxp *drv_fcxp = bfad_fcxp;

 drv_fcxp->req_status = req_status;
 drv_fcxp->rsp_len = rsp_len;


 drv_fcxp->bfa_fcxp = ((void*)0);
 complete(&drv_fcxp->comp);
}
