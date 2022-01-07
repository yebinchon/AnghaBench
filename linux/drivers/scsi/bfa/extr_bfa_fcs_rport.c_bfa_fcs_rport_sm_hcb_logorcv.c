
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int prlo; int timer; int plogi_retries; int ns_retries; TYPE_3__* port; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_5__ {int fabric; } ;
struct TYPE_4__ {int bfa; } ;


 int BFA_FALSE ;
 int BFA_FCS_PID_IS_WKA (int) ;
 int BFA_TRUE ;
 int bfa_fcs_fabric_is_switched (int ) ;
 int bfa_fcs_lport_is_online (TYPE_3__*) ;
 int bfa_fcs_rport_del_timeout ;
 int bfa_fcs_rport_send_logo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogi (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_prlo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_delete_pending ;
 int bfa_fcs_rport_sm_hcb_offline ;
 int bfa_fcs_rport_sm_nsdisc_sending ;
 int bfa_fcs_rport_sm_offline ;
 int bfa_fcs_rport_sm_plogi_sending ;
 int bfa_fcs_rport_timeout ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_hcb_logorcv(struct bfa_fcs_rport_s *rport,
   enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 133:
 case 135:
  if (rport->pid && (rport->prlo == BFA_TRUE))
   bfa_fcs_rport_send_prlo_acc(rport);
  if (rport->pid && (rport->prlo == BFA_FALSE))
   bfa_fcs_rport_send_logo_acc(rport);





  if (bfa_fcs_lport_is_online(rport->port) &&
   (!BFA_FCS_PID_IS_WKA(rport->pid))) {
   if (bfa_fcs_fabric_is_switched(rport->port->fabric)) {
    bfa_sm_set_state(rport,
     bfa_fcs_rport_sm_nsdisc_sending);
    rport->ns_retries = 0;
    bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
   } else {

    bfa_sm_set_state(rport,
     bfa_fcs_rport_sm_plogi_sending);
    rport->plogi_retries = 0;
    bfa_fcs_rport_send_plogi(rport, ((void*)0));
   }
  } else {




   if (!BFA_FCS_PID_IS_WKA(rport->pid))
    rport->pid = 0;
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
   bfa_timer_start(rport->fcs->bfa, &rport->timer,
     bfa_fcs_rport_timeout, rport,
     bfa_fcs_rport_del_timeout);
  }
  break;

 case 134:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_delete_pending);
  if (rport->pid && (rport->prlo == BFA_TRUE))
   bfa_fcs_rport_send_prlo_acc(rport);
  if (rport->pid && (rport->prlo == BFA_FALSE))
   bfa_fcs_rport_send_logo_acc(rport);
  break;

 case 132:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_hcb_offline);
  break;

 case 128:
 case 129:
 case 131:
 case 130:



  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
