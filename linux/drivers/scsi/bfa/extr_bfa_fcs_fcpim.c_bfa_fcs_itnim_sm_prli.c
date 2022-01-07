
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_fcs_itnim_s {TYPE_1__* fcs; int fcxp; TYPE_2__* rport; int timer; } ;
typedef enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_5__ {int pwwn; int scsi_function; } ;
struct TYPE_4__ {int bfa; } ;
 int BFA_FCS_RETRY_TIMEOUT ;
 int BFA_RPORT_INITIATOR ;
 int RPSM_EVENT_FC4_FCS_ONLINE ;
 int RPSM_EVENT_FC4_OFFLINE ;
 int bfa_fcs_itnim_free (struct bfa_fcs_itnim_s*) ;
 int bfa_fcs_itnim_sm_hal_rport_online ;
 int bfa_fcs_itnim_sm_initiator ;
 int bfa_fcs_itnim_sm_offline ;
 int bfa_fcs_itnim_sm_prli_retry ;
 int bfa_fcs_itnim_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_send_event (TYPE_2__*,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_itnim_sm_prli(struct bfa_fcs_itnim_s *itnim,
   enum bfa_fcs_itnim_event event)
{
 bfa_trc(itnim->fcs, itnim->rport->pwwn);
 bfa_trc(itnim->fcs, event);

 switch (event) {
 case 128:
  if (itnim->rport->scsi_function == BFA_RPORT_INITIATOR)
   bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_initiator);
  else
   bfa_sm_set_state(itnim,
    bfa_fcs_itnim_sm_hal_rport_online);

  bfa_sm_send_event(itnim->rport, RPSM_EVENT_FC4_FCS_ONLINE);
  break;

 case 130:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_prli_retry);
  bfa_timer_start(itnim->fcs->bfa, &itnim->timer,
    bfa_fcs_itnim_timeout, itnim,
    BFA_FCS_RETRY_TIMEOUT);
  break;

 case 129:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  break;

 case 131:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_fcxp_discard(itnim->fcxp);
  bfa_sm_send_event(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
  break;

 case 132:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_initiator);
  bfa_fcxp_discard(itnim->fcxp);
  bfa_sm_send_event(itnim->rport, RPSM_EVENT_FC4_FCS_ONLINE);
  break;

 case 133:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_fcxp_discard(itnim->fcxp);
  bfa_fcs_itnim_free(itnim);
  break;

 default:
  bfa_sm_fault(itnim->fcs, event);
 }
}
