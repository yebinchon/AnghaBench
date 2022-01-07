
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int timer; scalar_t__ iotov_active; } ;


 scalar_t__ BFA_FALSE ;
 int bfa_timer_stop (int *) ;

__attribute__((used)) static void
bfa_itnim_iotov_stop(struct bfa_itnim_s *itnim)
{
 if (itnim->iotov_active) {
  itnim->iotov_active = BFA_FALSE;
  bfa_timer_stop(&itnim->timer);
 }
}
