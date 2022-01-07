
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_sgpg_wqe_s {int nsgpg_total; int nsgpg; int qe; int sgpg_q; } ;
struct bfa_sgpg_mod_s {int free_sgpgs; int sgpg_wait_q; int sgpg_q; } ;
struct bfa_s {int dummy; } ;


 struct bfa_sgpg_mod_s* BFA_SGPG_MOD (struct bfa_s*) ;
 int WARN_ON (int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int list_splice_tail_init (int *,int *) ;

void
bfa_sgpg_wait(struct bfa_s *bfa, struct bfa_sgpg_wqe_s *wqe, int nsgpg)
{
 struct bfa_sgpg_mod_s *mod = BFA_SGPG_MOD(bfa);

 WARN_ON(nsgpg <= 0);
 WARN_ON(nsgpg <= mod->free_sgpgs);

 wqe->nsgpg_total = wqe->nsgpg = nsgpg;




 if (mod->free_sgpgs) {



  WARN_ON(!list_empty(&mod->sgpg_wait_q));
  list_splice_tail_init(&mod->sgpg_q, &wqe->sgpg_q);
  wqe->nsgpg -= mod->free_sgpgs;
  mod->free_sgpgs = 0;
 }

 list_add_tail(&wqe->qe, &mod->sgpg_wait_q);
}
