
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int io_q; int pending_q; } ;
struct bfa_ioim_s {int qe; } ;


 int BFA_FALSE ;
 int bfa_ioim_start (struct bfa_ioim_s*) ;
 int bfa_itnim_delayed_comp (struct bfa_itnim_s*,int ) ;
 int bfa_itnim_iotov_stop (struct bfa_itnim_s*) ;
 int bfa_q_deq (int *,struct bfa_ioim_s**) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void
bfa_itnim_iotov_online(struct bfa_itnim_s *itnim)
{
 struct bfa_ioim_s *ioim;

 bfa_itnim_iotov_stop(itnim);




 bfa_itnim_delayed_comp(itnim, BFA_FALSE);




 while (!list_empty(&itnim->pending_q)) {
  bfa_q_deq(&itnim->pending_q, &ioim);
  list_add_tail(&ioim->qe, &itnim->io_q);
  bfa_ioim_start(ioim);
 }
}
