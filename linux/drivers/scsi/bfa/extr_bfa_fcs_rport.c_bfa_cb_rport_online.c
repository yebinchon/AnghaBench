
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pwwn; int fcs; } ;


 int RPSM_EVENT_HCB_ONLINE ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_cb_rport_online(void *cbarg)
{

 struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) cbarg;

 bfa_trc(rport->fcs, rport->pwwn);
 bfa_sm_send_event(rport, RPSM_EVENT_HCB_ONLINE);
}
