
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pwwn; } ;
struct TYPE_6__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {int bb_credit; TYPE_3__* fcs; int lps; TYPE_2__ bport; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_7__ {int bfa; } ;






 int BFA_LPS_SM_OFFLINE ;
 int bfa_fcport_set_tx_bbcredit (int ,int) ;
 int bfa_fcs_fabric_delete (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_notify_offline (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_sm_deleting ;
 int bfa_fcs_fabric_sm_linkdown ;
 int bfa_sm_fault (TYPE_3__*,int) ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (TYPE_3__*,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_sm_nofabric(struct bfa_fcs_fabric_s *fabric,
      enum bfa_fcs_fabric_event event)
{
 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 130:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_linkdown);
  bfa_sm_send_event(fabric->lps, BFA_LPS_SM_OFFLINE);
  bfa_fcs_fabric_notify_offline(fabric);
  break;

 case 131:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_deleting);
  bfa_fcs_fabric_delete(fabric);
  break;

 case 129:
  bfa_trc(fabric->fcs, fabric->bb_credit);
  bfa_fcport_set_tx_bbcredit(fabric->fcs->bfa,
        fabric->bb_credit);
  break;

 case 128:
  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
