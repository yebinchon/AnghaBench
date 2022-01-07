
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __qm_mc_cgr {int cscn_targ; int cscn_targ_upd_ctrl; } ;


 scalar_t__ QMAN_REV30 ;
 int QM_CGR_TARG_PORTAL (int) ;
 int QM_CGR_TARG_UDP_CTRL_WRITE_BIT ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 scalar_t__ qman_ip_rev ;

__attribute__((used)) static void qm_cgr_cscn_targ_set(struct __qm_mc_cgr *cgr, int pi, u32 val)
{
 if (qman_ip_rev >= QMAN_REV30)
  cgr->cscn_targ_upd_ctrl = cpu_to_be16(pi |
     QM_CGR_TARG_UDP_CTRL_WRITE_BIT);
 else
  cgr->cscn_targ = cpu_to_be32(val | QM_CGR_TARG_PORTAL(pi));
}
