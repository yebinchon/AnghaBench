
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pwwn; } ;
struct bfa_fcs_lport_s {int fcs; TYPE_1__* fabric; int vport; TYPE_2__ port_cfg; } ;
typedef enum bfa_fcs_lport_event { ____Placeholder_bfa_fcs_lport_event } bfa_fcs_lport_event ;
struct TYPE_3__ {int stop_wc; } ;






 int bfa_fcs_lport_deleted (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_online_actions (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_sm_online ;
 int bfa_fcs_lport_sm_uninit ;
 int bfa_fcs_vport_stop_comp (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_s*,int ) ;
 int bfa_trc (int ,int) ;
 int bfa_wc_down (int *) ;

__attribute__((used)) static void
bfa_fcs_lport_sm_init(struct bfa_fcs_lport_s *port,
   enum bfa_fcs_lport_event event)
{
 bfa_trc(port->fcs, port->port_cfg.pwwn);
 bfa_trc(port->fcs, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(port, bfa_fcs_lport_sm_online);
  bfa_fcs_lport_online_actions(port);
  break;

 case 131:
  bfa_sm_set_state(port, bfa_fcs_lport_sm_uninit);
  bfa_fcs_lport_deleted(port);
  break;

 case 128:

  if (port->vport)
   bfa_fcs_vport_stop_comp(port->vport);
  else
   bfa_wc_down(&(port->fabric->stop_wc));
  break;

 case 130:
  break;

 default:
  bfa_sm_fault(port->fcs, event);
 }
}
