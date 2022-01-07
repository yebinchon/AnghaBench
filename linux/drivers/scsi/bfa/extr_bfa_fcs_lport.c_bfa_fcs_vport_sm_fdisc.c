
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_vport_s {int timer; int lport; int lps; } ;
typedef enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;


 int BFA_FCS_RETRY_TIMEOUT ;







 int BFA_LPS_SM_OFFLINE ;
 int __vport_bfa (struct bfa_fcs_vport_s*) ;
 int __vport_fcs (struct bfa_fcs_vport_s*) ;
 int __vport_pwwn (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_lport_online (int *) ;
 int bfa_fcs_vport_sm_error ;
 int bfa_fcs_vport_sm_fdisc_retry ;
 int bfa_fcs_vport_sm_fdisc_rsp_wait ;
 int bfa_fcs_vport_sm_offline ;
 int bfa_fcs_vport_sm_online ;
 int bfa_fcs_vport_timeout ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_vport_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_vport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_vport_sm_fdisc(struct bfa_fcs_vport_s *vport,
   enum bfa_fcs_vport_event event)
{
 bfa_trc(__vport_fcs(vport), __vport_pwwn(vport));
 bfa_trc(__vport_fcs(vport), event);

 switch (event) {
 case 134:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_fdisc_rsp_wait);
  break;

 case 132:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_offline);
  bfa_sm_send_event(vport->lps, BFA_LPS_SM_OFFLINE);
  break;

 case 128:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_online);
  bfa_fcs_lport_online(&vport->lport);
  break;

 case 130:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_fdisc_retry);
  bfa_timer_start(__vport_bfa(vport), &vport->timer,
        bfa_fcs_vport_timeout, vport,
        BFA_FCS_RETRY_TIMEOUT);
  break;

 case 129:
 case 133:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_offline);
  break;

 case 131:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_error);
  break;

 default:
  bfa_sm_fault(__vport_fcs(vport), event);
 }
}
