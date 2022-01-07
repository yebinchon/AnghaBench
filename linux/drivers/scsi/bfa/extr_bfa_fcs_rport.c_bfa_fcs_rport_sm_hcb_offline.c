
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_2__* fcs; int plogi_retries; int timer; int scn_online; TYPE_4__* port; int ns_retries; int plogi_pending; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_7__ {TYPE_1__* fcs; int fabric; } ;
struct TYPE_6__ {int bfa; } ;
struct TYPE_5__ {int bfa; } ;


 int BFA_FALSE ;
 int BFA_PORT_TOPOLOGY_LOOP ;
 int bfa_fcport_get_topology (int ) ;
 int bfa_fcs_fabric_is_switched (int ) ;
 int bfa_fcs_lport_is_online (TYPE_4__*) ;
 int bfa_fcs_rport_del_timeout ;
 int bfa_fcs_rport_free (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_adisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogi (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogiacc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_sm_adisc_offline_sending ;
 int bfa_fcs_rport_sm_nsdisc_sending ;
 int bfa_fcs_rport_sm_offline ;
 int bfa_fcs_rport_sm_plogi_sending ;
 int bfa_fcs_rport_sm_plogiacc_sending ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_fcs_rport_timeout ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_2__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_hcb_offline(struct bfa_fcs_rport_s *rport,
    enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 134:
  if (bfa_fcs_lport_is_online(rport->port) &&
      (rport->plogi_pending)) {
   rport->plogi_pending = BFA_FALSE;
   bfa_sm_set_state(rport,
    bfa_fcs_rport_sm_plogiacc_sending);
   bfa_fcs_rport_send_plogiacc(rport, ((void*)0));
   break;
  }


 case 137:
  if (!bfa_fcs_lport_is_online(rport->port)) {
   rport->pid = 0;
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
   bfa_timer_start(rport->fcs->bfa, &rport->timer,
     bfa_fcs_rport_timeout, rport,
     bfa_fcs_rport_del_timeout);
   break;
  }
  if (bfa_fcs_fabric_is_switched(rport->port->fabric)) {
   bfa_sm_set_state(rport,
    bfa_fcs_rport_sm_nsdisc_sending);
   rport->ns_retries = 0;
   bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  } else if (bfa_fcport_get_topology(rport->port->fcs->bfa) ==
     BFA_PORT_TOPOLOGY_LOOP) {
   if (rport->scn_online) {
    bfa_sm_set_state(rport,
     bfa_fcs_rport_sm_adisc_offline_sending);
    bfa_fcs_rport_send_adisc(rport, ((void*)0));
   } else {
    bfa_sm_set_state(rport,
     bfa_fcs_rport_sm_offline);
    bfa_timer_start(rport->fcs->bfa, &rport->timer,
     bfa_fcs_rport_timeout, rport,
     bfa_fcs_rport_del_timeout);
   }
  } else {
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogi_sending);
   rport->plogi_retries = 0;
   bfa_fcs_rport_send_plogi(rport, ((void*)0));
  }
  break;

 case 136:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcs_rport_free(rport);
  break;

 case 128:
 case 129:
 case 135:
 case 132:
 case 130:
 case 131:
 case 133:



  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
