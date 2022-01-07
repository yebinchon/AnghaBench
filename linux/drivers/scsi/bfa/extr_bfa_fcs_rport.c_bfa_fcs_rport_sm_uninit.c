
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; int ns_retries; int plogi_retries; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;







 int bfa_fcs_rport_hal_online (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogi (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogiacc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_sm_hal_online ;
 int bfa_fcs_rport_sm_nsdisc_sending ;
 int bfa_fcs_rport_sm_plogi_sending ;
 int bfa_fcs_rport_sm_plogiacc_sending ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_uninit(struct bfa_fcs_rport_s *rport, enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogi_sending);
  rport->plogi_retries = 0;
  bfa_fcs_rport_send_plogi(rport, ((void*)0));
  break;

 case 129:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogiacc_sending);
  bfa_fcs_rport_send_plogiacc(rport, ((void*)0));
  break;

 case 130:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_hal_online);
  bfa_fcs_rport_hal_online(rport);
  break;

 case 132:
 case 131:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_nsdisc_sending);
  rport->ns_retries = 0;
  bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  break;
 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
