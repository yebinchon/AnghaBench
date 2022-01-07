
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_s {int qe; int bfa; } ;
struct bfa_rport_mod_s {int rp_free_q; int rp_active_q; } ;


 struct bfa_rport_mod_s* BFA_RPORT_MOD (int ) ;
 int WARN_ON (int) ;
 int bfa_q_is_on_q (int *,struct bfa_rport_s*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void
bfa_rport_free(struct bfa_rport_s *rport)
{
 struct bfa_rport_mod_s *mod = BFA_RPORT_MOD(rport->bfa);

 WARN_ON(!bfa_q_is_on_q(&mod->rp_active_q, rport));
 list_del(&rport->qe);
 list_add_tail(&rport->qe, &mod->rp_free_q);
}
