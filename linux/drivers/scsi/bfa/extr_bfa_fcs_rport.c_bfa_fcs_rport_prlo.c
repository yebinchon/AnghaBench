
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int reply_oxid; int prlo; int pid; int fcs; } ;
typedef int __be16 ;


 int BFA_TRUE ;
 int RPSM_EVENT_PRLO_RCVD ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_rport_prlo(struct bfa_fcs_rport_s *rport, __be16 ox_id)
{
 bfa_trc(rport->fcs, rport->pid);

 rport->prlo = BFA_TRUE;
 rport->reply_oxid = ox_id;
 bfa_sm_send_event(rport, RPSM_EVENT_PRLO_RCVD);
}
