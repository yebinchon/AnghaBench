
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_s {int qe; } ;
struct bfa_rport_mod_s {int rp_active_q; int rp_free_q; } ;


 int bfa_q_deq (int *,struct bfa_rport_s**) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct bfa_rport_s *
bfa_rport_alloc(struct bfa_rport_mod_s *mod)
{
 struct bfa_rport_s *rport;

 bfa_q_deq(&mod->rp_free_q, &rport);
 if (rport)
  list_add_tail(&rport->qe, &mod->rp_active_q);

 return rport;
}
