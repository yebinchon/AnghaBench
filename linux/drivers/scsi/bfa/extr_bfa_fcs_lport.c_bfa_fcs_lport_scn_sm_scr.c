
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_lport_scn_s {int fcxp; int timer; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; } ;
typedef enum port_scn_event { ____Placeholder_port_scn_event } port_scn_event ;
struct TYPE_2__ {int bfa; } ;


 int BFA_FCS_RETRY_TIMEOUT ;



 int bfa_fcs_lport_scn_sm_offline ;
 int bfa_fcs_lport_scn_sm_online ;
 int bfa_fcs_lport_scn_sm_scr_retry ;
 int bfa_fcs_lport_scn_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_scn_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_lport_scn_s*,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_scn_sm_scr(struct bfa_fcs_lport_scn_s *scn,
   enum port_scn_event event)
{
 struct bfa_fcs_lport_s *port = scn->port;

 switch (event) {
 case 128:
  bfa_sm_set_state(scn, bfa_fcs_lport_scn_sm_online);
  break;

 case 129:
  bfa_sm_set_state(scn, bfa_fcs_lport_scn_sm_scr_retry);
  bfa_timer_start(port->fcs->bfa, &scn->timer,
        bfa_fcs_lport_scn_timeout, scn,
        BFA_FCS_RETRY_TIMEOUT);
  break;

 case 130:
  bfa_sm_set_state(scn, bfa_fcs_lport_scn_sm_offline);
  bfa_fcxp_discard(scn->fcxp);
  break;

 default:
  bfa_sm_fault(port->fcs, event);
 }
}
