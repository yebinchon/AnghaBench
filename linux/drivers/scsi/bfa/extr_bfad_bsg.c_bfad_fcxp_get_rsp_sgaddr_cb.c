
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct bfad_fcxp {struct bfa_sge_s* rsp_sge; } ;
struct bfa_sge_s {scalar_t__ sg_addr; } ;



u64
bfad_fcxp_get_rsp_sgaddr_cb(void *bfad_fcxp, int sgeid)
{
 struct bfad_fcxp *drv_fcxp = bfad_fcxp;
 struct bfa_sge_s *sge;
 u64 addr;

 sge = drv_fcxp->rsp_sge + sgeid;
 addr = (u64)(size_t) sge->sg_addr;
 return addr;
}
