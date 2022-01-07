
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_itnim_s {int pending_q; } ;
struct bfa_ioim_s {TYPE_1__* fcpim; int qe; } ;
struct TYPE_2__ {int ioim_comp_q; } ;


 int BFA_TRUE ;
 int bfa_ioim_tov (struct bfa_ioim_s*) ;
 int bfa_itnim_delayed_comp (struct bfa_itnim_s*,int ) ;
 int bfa_q_deq (int *,struct bfa_ioim_s**) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void
bfa_itnim_iotov_cleanup(struct bfa_itnim_s *itnim)
{
 struct bfa_ioim_s *ioim;




 bfa_itnim_delayed_comp(itnim, BFA_TRUE);




 while (!list_empty(&itnim->pending_q)) {
  bfa_q_deq(&itnim->pending_q, &ioim);
  list_add_tail(&ioim->qe, &ioim->fcpim->ioim_comp_q);
  bfa_ioim_tov(ioim);
 }
}
