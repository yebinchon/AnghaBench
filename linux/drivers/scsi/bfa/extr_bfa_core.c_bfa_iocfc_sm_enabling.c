
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfa_iocfc_s {TYPE_2__* bfa; } ;
typedef enum iocfc_event { ____Placeholder_iocfc_event } iocfc_event ;
struct TYPE_6__ {int cb_reqd; int en_hcb_qe; int op_status; } ;
struct TYPE_7__ {TYPE_1__ iocfc; } ;


 int BFA_FALSE ;
 int BFA_STATUS_FAILED ;




 int bfa_cb_queue (TYPE_2__*,int *,int ,TYPE_2__*) ;
 int bfa_fsm_set_state (struct bfa_iocfc_s*,int ) ;
 int bfa_iocfc_enable_cb ;
 int bfa_iocfc_sm_cfg_wait ;
 int bfa_iocfc_sm_dconf_write ;
 int bfa_iocfc_sm_disabling ;
 int bfa_iocfc_sm_failed ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_trc (TYPE_2__*,int) ;

__attribute__((used)) static void
bfa_iocfc_sm_enabling(struct bfa_iocfc_s *iocfc, enum iocfc_event event)
{
 bfa_trc(iocfc->bfa, event);

 switch (event) {
 case 130:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_cfg_wait);
  break;

 case 131:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_disabling);
  break;

 case 128:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_dconf_write);
  break;

 case 129:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_failed);

  if (iocfc->bfa->iocfc.cb_reqd == BFA_FALSE)
   break;

  iocfc->bfa->iocfc.op_status = BFA_STATUS_FAILED;
  bfa_cb_queue(iocfc->bfa, &iocfc->bfa->iocfc.en_hcb_qe,
        bfa_iocfc_enable_cb, iocfc->bfa);
  iocfc->bfa->iocfc.cb_reqd = BFA_FALSE;
  break;
 default:
  bfa_sm_fault(iocfc->bfa, event);
  break;
 }
}
