
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_lport_fdmi_s {struct bfa_fcs_lport_ms_s* ms; } ;
struct bfa_fcs_lport_ms_s {TYPE_2__* port; struct bfa_fcs_lport_fdmi_s fdmi; } ;
struct TYPE_4__ {TYPE_1__* fcs; } ;
struct TYPE_3__ {scalar_t__ fdmi_enabled; } ;


 int bfa_fcs_lport_fdmi_sm_disabled ;
 int bfa_fcs_lport_fdmi_sm_offline ;
 int bfa_sm_set_state (struct bfa_fcs_lport_fdmi_s*,int ) ;

void
bfa_fcs_lport_fdmi_init(struct bfa_fcs_lport_ms_s *ms)
{
 struct bfa_fcs_lport_fdmi_s *fdmi = &ms->fdmi;

 fdmi->ms = ms;
 if (ms->port->fcs->fdmi_enabled)
  bfa_sm_set_state(fdmi, bfa_fcs_lport_fdmi_sm_offline);
 else
  bfa_sm_set_state(fdmi, bfa_fcs_lport_fdmi_sm_disabled);
}
