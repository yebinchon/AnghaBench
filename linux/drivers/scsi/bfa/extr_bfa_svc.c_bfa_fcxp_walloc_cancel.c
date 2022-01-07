
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_fcxp_wqe_s {int qe; } ;
struct bfa_fcxp_mod_s {int rsp_wait_q; int req_wait_q; } ;


 struct bfa_fcxp_mod_s* BFA_FCXP_MOD (struct bfa_s*) ;
 int WARN_ON (int) ;
 int bfa_q_is_on_q (int *,struct bfa_fcxp_wqe_s*) ;
 int list_del (int *) ;

void
bfa_fcxp_walloc_cancel(struct bfa_s *bfa, struct bfa_fcxp_wqe_s *wqe)
{
 struct bfa_fcxp_mod_s *mod = BFA_FCXP_MOD(bfa);

 WARN_ON(!bfa_q_is_on_q(&mod->req_wait_q, wqe) ||
  !bfa_q_is_on_q(&mod->rsp_wait_q, wqe));
 list_del(&wqe->qe);
}
