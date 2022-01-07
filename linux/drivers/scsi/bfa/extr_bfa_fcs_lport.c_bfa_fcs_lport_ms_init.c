
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_fcs_lport_ms_s {struct bfa_fcs_lport_s* port; } ;


 struct bfa_fcs_lport_ms_s* BFA_FCS_GET_MS_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_fdmi_init (struct bfa_fcs_lport_ms_s*) ;
 int bfa_fcs_lport_ms_sm_offline ;
 int bfa_sm_set_state (struct bfa_fcs_lport_ms_s*,int ) ;

void
bfa_fcs_lport_ms_init(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_ms_s *ms = BFA_FCS_GET_MS_FROM_PORT(port);

 ms->port = port;
 bfa_sm_set_state(ms, bfa_fcs_lport_ms_sm_offline);




 bfa_fcs_lport_fdmi_init(ms);
}
