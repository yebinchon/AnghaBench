
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wwn_t ;
struct bfa_lport_cfg_s {int pwwn; } ;
struct bfa_fcs_rport_s {int pwwn; int pid; } ;
struct bfa_fcs_lport_n2n_s {int rem_port_wwn; } ;
struct TYPE_3__ {struct bfa_fcs_lport_n2n_s pn2n; } ;
struct bfa_fcs_lport_s {scalar_t__ num_rports; int fcs; TYPE_2__* fabric; int pid; struct bfa_lport_cfg_s port_cfg; TYPE_1__ port_topo; } ;
struct TYPE_4__ {int lps; } ;


 int N2N_LOCAL_PID ;
 int N2N_REMOTE_PID ;
 int RPSM_EVENT_DELETE ;
 int RPSM_EVENT_PLOGI_SEND ;
 int WARN_ON (int ) ;
 struct bfa_fcs_rport_s* bfa_fcs_lport_get_rport_by_pid (struct bfa_fcs_lport_s*,int ) ;
 struct bfa_fcs_rport_s* bfa_fcs_lport_get_rport_by_pwwn (struct bfa_fcs_lport_s*,int ) ;
 int bfa_fcs_rport_create (struct bfa_fcs_lport_s*,int ) ;
 int bfa_lps_set_n2n_pid (int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;
 scalar_t__ memcmp (void*,void*,int) ;

__attribute__((used)) static void
bfa_fcs_lport_n2n_online(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_n2n_s *n2n_port = &port->port_topo.pn2n;
 struct bfa_lport_cfg_s *pcfg = &port->port_cfg;
 struct bfa_fcs_rport_s *rport;

 bfa_trc(port->fcs, pcfg->pwwn);
 if (memcmp
     ((void *)&pcfg->pwwn, (void *)&n2n_port->rem_port_wwn,
      sizeof(wwn_t)) > 0) {
  port->pid = N2N_LOCAL_PID;
  bfa_lps_set_n2n_pid(port->fabric->lps, N2N_LOCAL_PID);



  rport = bfa_fcs_lport_get_rport_by_pwwn(port,
       n2n_port->rem_port_wwn);
  if (rport) {
   bfa_trc(port->fcs, rport->pid);
   bfa_trc(port->fcs, rport->pwwn);
   rport->pid = N2N_REMOTE_PID;
   bfa_sm_send_event(rport, RPSM_EVENT_PLOGI_SEND);
   return;
  }





  if (port->num_rports > 0) {
   rport = bfa_fcs_lport_get_rport_by_pid(port, 0);
   WARN_ON(rport == ((void*)0));
   if (rport) {
    bfa_trc(port->fcs, rport->pwwn);
    bfa_sm_send_event(rport, RPSM_EVENT_DELETE);
   }
  }
  bfa_fcs_rport_create(port, N2N_REMOTE_PID);
 }
}
