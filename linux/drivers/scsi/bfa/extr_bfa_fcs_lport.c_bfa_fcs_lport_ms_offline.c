
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_fcs_lport_ms_s {struct bfa_fcs_lport_s* port; } ;


 struct bfa_fcs_lport_ms_s* BFA_FCS_GET_MS_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int MSSM_EVENT_PORT_OFFLINE ;
 int bfa_fcs_lport_fdmi_offline (struct bfa_fcs_lport_ms_s*) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ms_s*,int ) ;

void
bfa_fcs_lport_ms_offline(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_ms_s *ms = BFA_FCS_GET_MS_FROM_PORT(port);

 ms->port = port;
 bfa_sm_send_event(ms, MSSM_EVENT_PORT_OFFLINE);
 bfa_fcs_lport_fdmi_offline(ms);
}
