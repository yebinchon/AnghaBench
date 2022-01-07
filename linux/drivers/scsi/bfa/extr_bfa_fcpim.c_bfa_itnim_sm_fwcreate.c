
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_itnim_s {int bfa; int is_online; TYPE_1__* rport; } ;
typedef enum bfa_itnim_event { ____Placeholder_bfa_itnim_event } bfa_itnim_event ;
struct TYPE_2__ {int rport_tag; } ;






 int BFA_TRUE ;
 int bfa_itnim_iotov_online (struct bfa_itnim_s*) ;
 int bfa_itnim_online_cb (struct bfa_itnim_s*) ;
 int bfa_itnim_send_fwdelete (struct bfa_itnim_s*) ;
 int bfa_itnim_sm_delete_pending ;
 int bfa_itnim_sm_fwdelete ;
 int bfa_itnim_sm_fwdelete_qfull ;
 int bfa_itnim_sm_iocdisable ;
 int bfa_itnim_sm_online ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_itnim_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_itnim_sm_fwcreate(struct bfa_itnim_s *itnim, enum bfa_itnim_event event)
{
 bfa_trc(itnim->bfa, itnim->rport->rport_tag);
 bfa_trc(itnim->bfa, event);

 switch (event) {
 case 130:
  bfa_sm_set_state(itnim, bfa_itnim_sm_online);
  itnim->is_online = BFA_TRUE;
  bfa_itnim_iotov_online(itnim);
  bfa_itnim_online_cb(itnim);
  break;

 case 131:
  bfa_sm_set_state(itnim, bfa_itnim_sm_delete_pending);
  break;

 case 128:
  if (bfa_itnim_send_fwdelete(itnim))
   bfa_sm_set_state(itnim, bfa_itnim_sm_fwdelete);
  else
   bfa_sm_set_state(itnim, bfa_itnim_sm_fwdelete_qfull);
  break;

 case 129:
  bfa_sm_set_state(itnim, bfa_itnim_sm_iocdisable);
  break;

 default:
  bfa_sm_fault(itnim->bfa, event);
 }
}
