
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pwwn; } ;
struct bfa_fcs_lport_s {int fcs; TYPE_1__ port_cfg; } ;
struct bfa_fcs_lport_fdmi_s {int fcxp; int retry_cnt; int timer; TYPE_2__* ms; } ;
typedef enum port_fdmi_event { ____Placeholder_port_fdmi_event } port_fdmi_event ;
struct TYPE_4__ {struct bfa_fcs_lport_s* port; } ;


 int BFA_FCS_FDMI_CMD_MAX_RETRIES ;
 int BFA_FCS_GET_HAL_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int BFA_FCS_RETRY_TIMEOUT ;



 int bfa_fcs_lport_fdmi_send_rpa (struct bfa_fcs_lport_fdmi_s*,int *) ;
 int bfa_fcs_lport_fdmi_sm_offline ;
 int bfa_fcs_lport_fdmi_sm_rhba_retry ;
 int bfa_fcs_lport_fdmi_sm_sending_rpa ;
 int bfa_fcs_lport_fdmi_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_fdmi_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_lport_fdmi_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_fdmi_sm_rhba(struct bfa_fcs_lport_fdmi_s *fdmi,
   enum port_fdmi_event event)
{
 struct bfa_fcs_lport_s *port = fdmi->ms->port;

 bfa_trc(port->fcs, port->port_cfg.pwwn);
 bfa_trc(port->fcs, event);

 switch (event) {
 case 129:




  if (fdmi->retry_cnt++ < BFA_FCS_FDMI_CMD_MAX_RETRIES) {
   bfa_sm_set_state(fdmi,
     bfa_fcs_lport_fdmi_sm_rhba_retry);
   bfa_timer_start(BFA_FCS_GET_HAL_FROM_PORT(port),
         &fdmi->timer,
         bfa_fcs_lport_fdmi_timeout, fdmi,
         BFA_FCS_RETRY_TIMEOUT);
  } else {



   bfa_sm_set_state(fdmi, bfa_fcs_lport_fdmi_sm_offline);
  }
  break;

 case 128:



  bfa_sm_set_state(fdmi, bfa_fcs_lport_fdmi_sm_sending_rpa);
  fdmi->retry_cnt = 0;
  bfa_fcs_lport_fdmi_send_rpa(fdmi, ((void*)0));
  break;

 case 130:
  bfa_fcxp_discard(fdmi->fcxp);
  bfa_sm_set_state(fdmi, bfa_fcs_lport_fdmi_sm_offline);
  break;

 default:
  bfa_sm_fault(port->fcs, event);
 }
}
