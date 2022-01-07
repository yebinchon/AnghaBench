
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pwwn; } ;
struct bfa_fcs_lport_s {int fcs; TYPE_2__ port_cfg; } ;
struct bfa_fcs_lport_fdmi_s {int fcxp_wqe; TYPE_1__* ms; } ;
typedef enum port_fdmi_event { ____Placeholder_port_fdmi_event } port_fdmi_event ;
struct TYPE_3__ {struct bfa_fcs_lport_s* port; } ;


 int BFA_FCS_GET_HAL_FROM_PORT (struct bfa_fcs_lport_s*) ;


 int bfa_fcs_lport_fdmi_sm_offline ;
 int bfa_fcs_lport_fdmi_sm_rpa ;
 int bfa_fcxp_walloc_cancel (int ,int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_fdmi_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_fdmi_sm_sending_rpa(struct bfa_fcs_lport_fdmi_s *fdmi,
     enum port_fdmi_event event)
{
 struct bfa_fcs_lport_s *port = fdmi->ms->port;

 bfa_trc(port->fcs, port->port_cfg.pwwn);
 bfa_trc(port->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(fdmi, bfa_fcs_lport_fdmi_sm_rpa);
  break;

 case 129:
  bfa_sm_set_state(fdmi, bfa_fcs_lport_fdmi_sm_offline);
  bfa_fcxp_walloc_cancel(BFA_FCS_GET_HAL_FROM_PORT(port),
        &fdmi->fcxp_wqe);
  break;

 default:
  bfa_sm_fault(port->fcs, event);
 }
}
