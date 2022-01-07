
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_fcs_lport_ns_s {TYPE_3__* port; int fcxp; int timer; } ;
typedef enum vport_ns_event { ____Placeholder_vport_ns_event } vport_ns_event ;
struct TYPE_4__ {int ns_retries; } ;
struct TYPE_5__ {int pwwn; } ;
struct TYPE_6__ {int fcs; TYPE_1__ stats; TYPE_2__ port_cfg; } ;


 int BFA_FCS_GET_HAL_FROM_PORT (TYPE_3__*) ;
 int BFA_FCS_RETRY_TIMEOUT ;



 int bfa_fcs_lport_ns_send_rft_id (struct bfa_fcs_lport_ns_s*,int *) ;
 int bfa_fcs_lport_ns_sm_offline ;
 int bfa_fcs_lport_ns_sm_rspn_id_retry ;
 int bfa_fcs_lport_ns_sm_sending_rft_id ;
 int bfa_fcs_lport_ns_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_sm_rspn_id(struct bfa_fcs_lport_ns_s *ns,
   enum vport_ns_event event)
{
 bfa_trc(ns->port->fcs, ns->port->port_cfg.pwwn);
 bfa_trc(ns->port->fcs, event);

 switch (event) {
 case 129:



  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_rspn_id_retry);
  ns->port->stats.ns_retries++;
  bfa_timer_start(BFA_FCS_GET_HAL_FROM_PORT(ns->port),
        &ns->timer, bfa_fcs_lport_ns_timeout, ns,
        BFA_FCS_RETRY_TIMEOUT);
  break;

 case 128:
  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_sending_rft_id);
  bfa_fcs_lport_ns_send_rft_id(ns, ((void*)0));
  break;

 case 130:
  bfa_fcxp_discard(ns->fcxp);
  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_offline);
  break;

 default:
  bfa_sm_fault(ns->port->fcs, event);
 }
}
