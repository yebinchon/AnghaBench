
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_sgpg_wqe_s {scalar_t__ nsgpg_total; scalar_t__ nsgpg; int sgpg_q; int qe; } ;
struct bfa_sgpg_mod_s {int sgpg_wait_q; } ;
struct bfa_s {int dummy; } ;


 struct bfa_sgpg_mod_s* BFA_SGPG_MOD (struct bfa_s*) ;
 int WARN_ON (int) ;
 int bfa_q_is_on_q (int *,struct bfa_sgpg_wqe_s*) ;
 int bfa_sgpg_mfree (struct bfa_s*,int *,scalar_t__) ;
 int list_del (int *) ;

void
bfa_sgpg_wcancel(struct bfa_s *bfa, struct bfa_sgpg_wqe_s *wqe)
{
 struct bfa_sgpg_mod_s *mod = BFA_SGPG_MOD(bfa);

 WARN_ON(!bfa_q_is_on_q(&mod->sgpg_wait_q, wqe));
 list_del(&wqe->qe);

 if (wqe->nsgpg_total != wqe->nsgpg)
  bfa_sgpg_mfree(bfa, &wqe->sgpg_q,
       wqe->nsgpg_total - wqe->nsgpg);
}
