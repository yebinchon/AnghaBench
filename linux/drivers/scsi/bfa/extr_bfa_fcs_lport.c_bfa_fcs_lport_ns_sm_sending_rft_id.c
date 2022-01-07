
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_lport_ns_s {TYPE_2__* port; int fcxp_wqe; } ;
typedef enum vport_ns_event { ____Placeholder_vport_ns_event } vport_ns_event ;
struct TYPE_3__ {int pwwn; } ;
struct TYPE_4__ {int fcs; TYPE_1__ port_cfg; } ;


 int BFA_FCS_GET_HAL_FROM_PORT (TYPE_2__*) ;


 int bfa_fcs_lport_ns_sm_offline ;
 int bfa_fcs_lport_ns_sm_rft_id ;
 int bfa_fcxp_walloc_cancel (int ,int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_sm_sending_rft_id(struct bfa_fcs_lport_ns_s *ns,
      enum vport_ns_event event)
{
 bfa_trc(ns->port->fcs, ns->port->port_cfg.pwwn);
 bfa_trc(ns->port->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_rft_id);
  break;

 case 129:
  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_offline);
  bfa_fcxp_walloc_cancel(BFA_FCS_GET_HAL_FROM_PORT(ns->port),
        &ns->fcxp_wqe);
  break;

 default:
  bfa_sm_fault(ns->port->fcs, event);
 }
}
