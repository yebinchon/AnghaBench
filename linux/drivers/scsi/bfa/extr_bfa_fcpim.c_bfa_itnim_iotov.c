
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int ditn; int iotov_active; } ;


 int BFA_FALSE ;
 int bfa_cb_itnim_tov (int ) ;
 int bfa_cb_itnim_tov_begin (int ) ;
 int bfa_itnim_iotov_cleanup (struct bfa_itnim_s*) ;

__attribute__((used)) static void
bfa_itnim_iotov(void *itnim_arg)
{
 struct bfa_itnim_s *itnim = itnim_arg;

 itnim->iotov_active = BFA_FALSE;

 bfa_cb_itnim_tov_begin(itnim->ditn);
 bfa_itnim_iotov_cleanup(itnim);
 bfa_cb_itnim_tov(itnim->ditn);
}
