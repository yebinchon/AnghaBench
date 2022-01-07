
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int timer; int fcxp; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int bfa; } ;
 int bfa_fcs_rport_del_timeout ;
 int bfa_fcs_rport_hal_online (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_plogiacc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_sm_hal_online ;
 int bfa_fcs_rport_sm_offline ;
 int bfa_fcs_rport_sm_plogiacc_sending ;
 int bfa_fcs_rport_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_adisc_offline(struct bfa_fcs_rport_s *rport,
   enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 135:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_hal_online);
  bfa_fcs_rport_hal_online(rport);
  break;

 case 130:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogiacc_sending);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_send_plogiacc(rport, ((void*)0));
  break;

 case 133:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
   bfa_fcs_rport_timeout, rport,
   bfa_fcs_rport_del_timeout);
  break;

 case 134:
 case 128:
 case 132:
 case 131:
 case 129:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
  bfa_fcxp_discard(rport->fcxp);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
   bfa_fcs_rport_timeout, rport,
   bfa_fcs_rport_del_timeout);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
