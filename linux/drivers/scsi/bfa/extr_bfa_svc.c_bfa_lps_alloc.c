
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_lps_s {int qe; } ;
struct bfa_lps_mod_s {int lps_active_q; int lps_free_q; } ;


 struct bfa_lps_mod_s* BFA_LPS_MOD (struct bfa_s*) ;
 int bfa_lps_sm_init ;
 int bfa_q_deq (int *,struct bfa_lps_s**) ;
 int bfa_sm_set_state (struct bfa_lps_s*,int ) ;
 int list_add_tail (int *,int *) ;

struct bfa_lps_s *
bfa_lps_alloc(struct bfa_s *bfa)
{
 struct bfa_lps_mod_s *mod = BFA_LPS_MOD(bfa);
 struct bfa_lps_s *lps = ((void*)0);

 bfa_q_deq(&mod->lps_free_q, &lps);

 if (lps == ((void*)0))
  return ((void*)0);

 list_add_tail(&lps->qe, &mod->lps_active_q);

 bfa_sm_set_state(lps, bfa_lps_sm_init);
 return lps;
}
