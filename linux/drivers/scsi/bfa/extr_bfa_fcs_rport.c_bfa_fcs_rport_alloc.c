
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
typedef int u32 ;
struct bfad_rport_s {int dummy; } ;
struct bfa_fcs_s {scalar_t__ num_rport_logins; int bfad; } ;
struct bfa_fcs_rport_s {int pid; int itnim; int * bfa_rport; scalar_t__ old_pid; int pwwn; struct bfad_rport_s* rp_drv; struct bfa_fcs_s* fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {struct bfa_fcs_s* fcs; } ;


 int BFA_FCS_PID_IS_WKA (int ) ;
 scalar_t__ BFA_STATUS_OK ;
 int WARN_ON (int) ;
 scalar_t__ bfa_fcb_rport_alloc (int ,struct bfa_fcs_rport_s**,struct bfad_rport_s**) ;
 int bfa_fcs_itnim_create (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_lport_add_rport (struct bfa_fcs_lport_s*,struct bfa_fcs_rport_s*) ;
 scalar_t__ bfa_fcs_lport_is_initiator (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rpf_init (struct bfa_fcs_rport_s*) ;
 scalar_t__ bfa_fcs_rport_max_logins ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (struct bfa_fcs_s*,int ) ;
 int kfree (struct bfad_rport_s*) ;

__attribute__((used)) static struct bfa_fcs_rport_s *
bfa_fcs_rport_alloc(struct bfa_fcs_lport_s *port, wwn_t pwwn, u32 rpid)
{
 struct bfa_fcs_s *fcs = port->fcs;
 struct bfa_fcs_rport_s *rport;
 struct bfad_rport_s *rport_drv;




 if (fcs->num_rport_logins >= bfa_fcs_rport_max_logins) {
  bfa_trc(fcs, rpid);
  return ((void*)0);
 }

 if (bfa_fcb_rport_alloc(fcs->bfad, &rport, &rport_drv)
  != BFA_STATUS_OK) {
  bfa_trc(fcs, rpid);
  return ((void*)0);
 }




 rport->port = port;
 rport->fcs = fcs;
 rport->rp_drv = rport_drv;
 rport->pid = rpid;
 rport->pwwn = pwwn;
 rport->old_pid = 0;

 rport->bfa_rport = ((void*)0);




 WARN_ON(!bfa_fcs_lport_is_initiator(port));

 if (bfa_fcs_lport_is_initiator(port)) {
  rport->itnim = bfa_fcs_itnim_create(rport);
  if (!rport->itnim) {
   bfa_trc(fcs, rpid);
   kfree(rport_drv);
   return ((void*)0);
  }
 }

 bfa_fcs_lport_add_rport(port, rport);
 fcs->num_rport_logins++;

 bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);


 if (!BFA_FCS_PID_IS_WKA(rport->pid))
  bfa_fcs_rpf_init(rport);

 return rport;
}
