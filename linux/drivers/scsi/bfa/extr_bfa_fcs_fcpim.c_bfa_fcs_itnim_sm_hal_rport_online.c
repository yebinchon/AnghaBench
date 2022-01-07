
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_fcs_itnim_s {TYPE_1__* fcs; TYPE_2__* rport; int seq_rec; int bfa_itnim; } ;
typedef enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_5__ {int pwwn; int bfa_rport; } ;
struct TYPE_4__ {int bfa; } ;





 int RPSM_EVENT_DELETE ;
 int RPSM_EVENT_FC4_OFFLINE ;
 int bfa_fcs_itnim_free (struct bfa_fcs_itnim_s*) ;
 int bfa_fcs_itnim_sm_hcb_online ;
 int bfa_fcs_itnim_sm_offline ;
 int bfa_itnim_create (int ,int ,struct bfa_fcs_itnim_s*) ;
 int bfa_itnim_online (int ,int ) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_send_event (TYPE_2__*,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_itnim_sm_hal_rport_online(struct bfa_fcs_itnim_s *itnim,
    enum bfa_fcs_itnim_event event)
{
 bfa_trc(itnim->fcs, itnim->rport->pwwn);
 bfa_trc(itnim->fcs, event);

 switch (event) {
 case 129:
  if (!itnim->bfa_itnim)
   itnim->bfa_itnim = bfa_itnim_create(itnim->fcs->bfa,
     itnim->rport->bfa_rport, itnim);

  if (itnim->bfa_itnim) {
   bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_hcb_online);
   bfa_itnim_online(itnim->bfa_itnim, itnim->seq_rec);
  } else {
   bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
   bfa_sm_send_event(itnim->rport, RPSM_EVENT_DELETE);
  }

  break;

 case 128:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_sm_send_event(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
  break;

 case 130:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_fcs_itnim_free(itnim);
  break;

 default:
  bfa_sm_fault(itnim->fcs, event);
 }
}
