
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_s {int num_rport_logins; } ;
struct bfa_fcs_rport_s {scalar_t__ pid; int rp_drv; int * bfa_rport; int itnim; int plogi_pending; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {struct bfa_fcs_s* fcs; } ;


 int BFA_FALSE ;
 int BFA_FCS_PID_IS_WKA (scalar_t__) ;
 int BFA_RPORT_SM_DELETE ;
 int bfa_fcs_itnim_delete (int ) ;
 int bfa_fcs_lport_del_rport (struct bfa_fcs_lport_s*,struct bfa_fcs_rport_s*) ;
 scalar_t__ bfa_fcs_lport_is_initiator (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rpf_rport_offline (struct bfa_fcs_rport_s*) ;
 int bfa_sm_send_event (int *,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void
bfa_fcs_rport_free(struct bfa_fcs_rport_s *rport)
{
 struct bfa_fcs_lport_s *port = rport->port;
 struct bfa_fcs_s *fcs = port->fcs;






 rport->plogi_pending = BFA_FALSE;

 if (bfa_fcs_lport_is_initiator(port)) {
  bfa_fcs_itnim_delete(rport->itnim);
  if (rport->pid != 0 && !BFA_FCS_PID_IS_WKA(rport->pid))
   bfa_fcs_rpf_rport_offline(rport);
 }

 if (rport->bfa_rport) {
  bfa_sm_send_event(rport->bfa_rport, BFA_RPORT_SM_DELETE);
  rport->bfa_rport = ((void*)0);
 }

 bfa_fcs_lport_del_rport(port, rport);
 fcs->num_rport_logins--;
 kfree(rport->rp_drv);
}
