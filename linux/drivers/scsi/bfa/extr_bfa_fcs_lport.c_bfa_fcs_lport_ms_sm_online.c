
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_lport_ms_s {TYPE_2__* port; int retry_cnt; } ;
typedef enum port_ms_event { ____Placeholder_port_ms_event } port_ms_event ;
struct TYPE_3__ {int pwwn; } ;
struct TYPE_4__ {int fcs; TYPE_1__ port_cfg; } ;




 int bfa_fcs_lport_ms_send_gfn (struct bfa_fcs_lport_ms_s*,int *) ;
 int bfa_fcs_lport_ms_sm_gfn_sending ;
 int bfa_fcs_lport_ms_sm_offline ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_ms_sm_online(struct bfa_fcs_lport_ms_s *ms,
   enum port_ms_event event)
{
 bfa_trc(ms->port->fcs, ms->port->port_cfg.pwwn);
 bfa_trc(ms->port->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(ms, bfa_fcs_lport_ms_sm_offline);
  break;

 case 129:
  bfa_sm_set_state(ms, bfa_fcs_lport_ms_sm_gfn_sending);
  ms->retry_cnt = 0;
  bfa_fcs_lport_ms_send_gfn(ms, ((void*)0));
  break;

 default:
  bfa_sm_fault(ms->port->fcs, event);
 }
}
