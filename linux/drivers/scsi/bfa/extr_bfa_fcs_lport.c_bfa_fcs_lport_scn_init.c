
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_scn_s {struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int dummy; } ;


 struct bfa_fcs_lport_scn_s* BFA_FCS_GET_SCN_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_scn_sm_offline ;
 int bfa_sm_set_state (struct bfa_fcs_lport_scn_s*,int ) ;

void
bfa_fcs_lport_scn_init(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_scn_s *scn = BFA_FCS_GET_SCN_FROM_PORT(port);

 scn->port = port;
 bfa_sm_set_state(scn, bfa_fcs_lport_scn_sm_offline);
}
