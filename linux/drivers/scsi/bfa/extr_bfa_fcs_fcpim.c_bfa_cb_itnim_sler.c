
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sler; } ;
struct bfa_fcs_itnim_s {TYPE_2__* rport; int fcs; TYPE_1__ stats; } ;
struct TYPE_4__ {int pwwn; } ;


 int RPSM_EVENT_LOGO_IMP ;
 int bfa_sm_send_event (TYPE_2__*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_cb_itnim_sler(void *cb_arg)
{
 struct bfa_fcs_itnim_s *itnim = (struct bfa_fcs_itnim_s *) cb_arg;

 itnim->stats.sler++;
 bfa_trc(itnim->fcs, itnim->rport->pwwn);
 bfa_sm_send_event(itnim->rport, RPSM_EVENT_LOGO_IMP);
}
