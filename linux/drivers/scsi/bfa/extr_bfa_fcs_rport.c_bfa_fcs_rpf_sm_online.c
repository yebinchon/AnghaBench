
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; } ;
struct bfa_fcs_rpf_s {int rpsc_retries; struct bfa_fcs_rport_s* rport; } ;
typedef enum rpf_event { ____Placeholder_rpf_event } rpf_event ;



 int bfa_fcs_rpf_sm_offline ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rpf_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rpf_sm_online(struct bfa_fcs_rpf_s *rpf, enum rpf_event event)
{
 struct bfa_fcs_rport_s *rport = rpf->rport;

 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_offline);
  rpf->rpsc_retries = 0;
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
