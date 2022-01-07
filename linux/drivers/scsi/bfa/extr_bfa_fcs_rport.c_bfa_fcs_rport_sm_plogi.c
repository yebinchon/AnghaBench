
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; int old_pid; TYPE_2__* fcs; int fcxp; int ns_retries; TYPE_3__* port; int timer; int plogi_retries; int prlo; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_7__ {TYPE_1__* fcs; } ;
struct TYPE_6__ {int bfa; } ;
struct TYPE_5__ {int bfa; } ;


 int BFA_FCS_RETRY_TIMEOUT ;
 int BFA_FCS_RPORT_MAX_RETRIES ;
 int BFA_PORT_TOPOLOGY_LOOP ;
 int BFA_TRUE ;
 int FC_RA_TOV ;
 int WARN_ON (int) ;
 int bfa_fcport_get_topology (int ) ;
 int bfa_fcs_rport_del_timeout ;
 int bfa_fcs_rport_fcs_online_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_free (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_logo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogiacc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_prlo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_fc4_fcs_online ;
 int bfa_fcs_rport_sm_nsdisc_sending ;
 int bfa_fcs_rport_sm_offline ;
 int bfa_fcs_rport_sm_plogi_retry ;
 int bfa_fcs_rport_sm_plogiacc_sending ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_fcs_rport_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_stats (TYPE_3__*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_rport_s*,int) ;
 int bfa_trc (TYPE_2__*,int) ;
 int rport_del_max_plogi_retry ;

__attribute__((used)) static void
bfa_fcs_rport_sm_plogi(struct bfa_fcs_rport_s *rport, enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 140:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_fcs_online);
  rport->plogi_retries = 0;
  bfa_fcs_rport_fcs_online_action(rport);
  break;

 case 134:
  bfa_fcs_rport_send_logo_acc(rport);

 case 130:
  if (rport->prlo == BFA_TRUE)
   bfa_fcs_rport_send_prlo_acc(rport);

  bfa_fcxp_discard(rport->fcxp);

 case 136:
  if (rport->plogi_retries < BFA_FCS_RPORT_MAX_RETRIES) {
   rport->plogi_retries++;
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogi_retry);
   bfa_timer_start(rport->fcs->bfa, &rport->timer,
     bfa_fcs_rport_timeout, rport,
     BFA_FCS_RETRY_TIMEOUT);
  } else {
   bfa_stats(rport->port, rport_del_max_plogi_retry);
   rport->old_pid = rport->pid;
   rport->pid = 0;
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
   bfa_timer_start(rport->fcs->bfa, &rport->timer,
     bfa_fcs_rport_timeout, rport,
     bfa_fcs_rport_del_timeout);
  }
  break;

 case 128:
  break;

 case 129:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
  bfa_fcxp_discard(rport->fcxp);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
    bfa_fcs_rport_timeout, rport,
    bfa_fcs_rport_del_timeout);
  break;

 case 131:
  rport->plogi_retries = 0;
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogi_retry);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
    bfa_fcs_rport_timeout, rport,
    (FC_RA_TOV * 1000));
  break;

 case 135:
  rport->pid = 0;
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
  bfa_fcxp_discard(rport->fcxp);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
    bfa_fcs_rport_timeout, rport,
    bfa_fcs_rport_del_timeout);
  break;

 case 139:
 case 137:
  bfa_fcxp_discard(rport->fcxp);
  WARN_ON(!(bfa_fcport_get_topology(rport->port->fcs->bfa) !=
     BFA_PORT_TOPOLOGY_LOOP));
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_nsdisc_sending);
  rport->ns_retries = 0;
  bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  break;

 case 132:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogiacc_sending);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_send_plogiacc(rport, ((void*)0));
  break;

 case 138:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_free(rport);
  break;

 case 133:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_fcs_online);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_fcs_online_action(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
