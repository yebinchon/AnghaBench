
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; int ns_retries; TYPE_1__* port; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_2__ {int fabric; } ;
 int bfa_fcs_fabric_is_switched (int ) ;
 int bfa_fcs_rport_hal_offline_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_adisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_sm_adisc_online_sending ;
 int bfa_fcs_rport_sm_fc4_logorcv ;
 int bfa_fcs_rport_sm_fc4_logosend ;
 int bfa_fcs_rport_sm_fc4_offline ;
 int bfa_fcs_rport_sm_nsquery_sending ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_online(struct bfa_fcs_rport_s *rport, enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 135:
  if (bfa_fcs_fabric_is_switched(rport->port->fabric)) {
   bfa_sm_set_state(rport,
      bfa_fcs_rport_sm_nsquery_sending);
   rport->ns_retries = 0;
   bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  } else {
   bfa_sm_set_state(rport,
    bfa_fcs_rport_sm_adisc_online_sending);
   bfa_fcs_rport_send_adisc(rport, ((void*)0));
  }
  break;

 case 131:
 case 134:
 case 137:
 case 129:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 136:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logosend);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 133:
 case 130:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logorcv);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 128:
 case 132:
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
