
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_s {int dummy; } ;


 int BFA_FCS_PORT_SM_OFFLINE ;
 int bfa_sm_send_event (struct bfa_fcs_lport_s*,int ) ;

void
bfa_fcs_lport_offline(struct bfa_fcs_lport_s *port)
{
 bfa_sm_send_event(port, BFA_FCS_PORT_SM_OFFLINE);
}
