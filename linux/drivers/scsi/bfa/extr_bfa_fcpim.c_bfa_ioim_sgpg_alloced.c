
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_ioim_s {int sgpg_q; int sgpg; TYPE_2__* iosp; int nsges; int nsgpgs; } ;
struct TYPE_3__ {int sgpg_q; } ;
struct TYPE_4__ {TYPE_1__ sgpg_wqe; } ;


 int BFA_IOIM_SM_SGALLOCED ;
 int BFA_SGPG_NPAGE (int ) ;
 int bfa_q_first (int *) ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;
 int list_splice_tail_init (int *,int *) ;

__attribute__((used)) static void
bfa_ioim_sgpg_alloced(void *cbarg)
{
 struct bfa_ioim_s *ioim = cbarg;

 ioim->nsgpgs = BFA_SGPG_NPAGE(ioim->nsges);
 list_splice_tail_init(&ioim->iosp->sgpg_wqe.sgpg_q, &ioim->sgpg_q);
 ioim->sgpg = bfa_q_first(&ioim->sgpg_q);
 bfa_sm_send_event(ioim, BFA_IOIM_SM_SGALLOCED);
}
