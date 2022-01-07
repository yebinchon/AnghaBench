
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_3__* fcs; int timer; int fcxp_wqe; int ns_retries; TYPE_2__* port; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_7__ {int bfa; } ;
struct TYPE_6__ {TYPE_1__* fcs; } ;
struct TYPE_5__ {int bfa; } ;


 int BFA_PORT_TOPOLOGY_LOOP ;







 int WARN_ON (int) ;
 int bfa_fcport_get_topology (int ) ;
 int bfa_fcs_rport_del_timeout ;
 int bfa_fcs_rport_free (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogiacc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_sm_nsdisc_sending ;
 int bfa_fcs_rport_sm_offline ;
 int bfa_fcs_rport_sm_plogi ;
 int bfa_fcs_rport_sm_plogiacc_sending ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_fcs_rport_timeout ;
 int bfa_fcxp_walloc_cancel (int ,int *) ;
 int bfa_sm_fault (TYPE_3__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_3__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_plogi_sending(struct bfa_fcs_rport_s *rport,
  enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 131:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogi);
  break;

 case 133:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_free(rport);
  break;

 case 129:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogiacc_sending);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_send_plogiacc(rport, ((void*)0));
  break;

 case 128:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
    bfa_fcs_rport_timeout, rport,
    bfa_fcs_rport_del_timeout);
  break;
 case 134:
 case 132:

  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  WARN_ON(!(bfa_fcport_get_topology(rport->port->fcs->bfa) !=
     BFA_PORT_TOPOLOGY_LOOP));
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_nsdisc_sending);
  rport->ns_retries = 0;
  bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  break;

 case 130:
  rport->pid = 0;
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
    bfa_fcs_rport_timeout, rport,
    bfa_fcs_rport_del_timeout);
  break;


 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
