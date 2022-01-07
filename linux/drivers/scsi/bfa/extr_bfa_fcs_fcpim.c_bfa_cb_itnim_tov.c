
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_itnim_s {int state; } ;
struct bfa_fcs_itnim_s {TYPE_1__* rport; int fcs; struct bfad_itnim_s* itnim_drv; } ;
struct TYPE_2__ {int pwwn; } ;


 int ITNIM_STATE_TIMEOUT ;
 int bfa_trc (int ,int ) ;

void
bfa_cb_itnim_tov(void *cb_arg)
{
 struct bfa_fcs_itnim_s *itnim = (struct bfa_fcs_itnim_s *) cb_arg;
 struct bfad_itnim_s *itnim_drv = itnim->itnim_drv;

 bfa_trc(itnim->fcs, itnim->rport->pwwn);
 itnim_drv->state = ITNIM_STATE_TIMEOUT;
}
