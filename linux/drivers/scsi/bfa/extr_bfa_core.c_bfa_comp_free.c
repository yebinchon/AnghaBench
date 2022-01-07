
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_cb_qe_s {int cbarg; int (* cbfn ) (int ,int ) ;int pre_rmv; } ;


 int BFA_FALSE ;
 int WARN_ON (int ) ;
 int bfa_q_deq (struct list_head*,struct list_head**) ;
 int list_empty (struct list_head*) ;
 int stub1 (int ,int ) ;

void
bfa_comp_free(struct bfa_s *bfa, struct list_head *comp_q)
{
 struct list_head *qe;
 struct bfa_cb_qe_s *hcb_qe;

 while (!list_empty(comp_q)) {
  bfa_q_deq(comp_q, &qe);
  hcb_qe = (struct bfa_cb_qe_s *) qe;
  WARN_ON(hcb_qe->pre_rmv);
  hcb_qe->cbfn(hcb_qe->cbarg, BFA_FALSE);
 }
}
