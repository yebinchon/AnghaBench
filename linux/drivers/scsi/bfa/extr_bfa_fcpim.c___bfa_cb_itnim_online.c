
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int ditn; } ;
typedef scalar_t__ bfa_boolean_t ;


 int bfa_cb_itnim_online (int ) ;

__attribute__((used)) static void
__bfa_cb_itnim_online(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_itnim_s *itnim = cbarg;

 if (complete)
  bfa_cb_itnim_online(itnim->ditn);
}
