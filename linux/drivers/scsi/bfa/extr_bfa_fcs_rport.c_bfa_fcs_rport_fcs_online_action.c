
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int itnim; int pid; int fcs; int pwwn; } ;


 int BFA_FCS_ITNIM_SM_FCS_ONLINE ;
 int bfa_sm_fault (int ,int ) ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_fcs_online_action(struct bfa_fcs_rport_s *rport)
{
 if ((!rport->pid) || (!rport->pwwn)) {
  bfa_trc(rport->fcs, rport->pid);
  bfa_sm_fault(rport->fcs, rport->pid);
 }

 bfa_sm_send_event(rport->itnim, BFA_FCS_ITNIM_SM_FCS_ONLINE);
}
