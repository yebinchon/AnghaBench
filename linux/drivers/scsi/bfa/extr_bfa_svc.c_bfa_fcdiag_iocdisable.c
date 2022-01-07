
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ lock; int status; int cbarg; int (* cbfn ) (int ,int ) ;} ;
struct bfa_dport_s {int dummy; } ;
struct bfa_fcdiag_s {TYPE_1__ lb; struct bfa_dport_s dport; } ;


 int BFA_DPORT_SM_HWFAIL ;
 struct bfa_fcdiag_s* BFA_FCDIAG_MOD (struct bfa_s*) ;
 int BFA_STATUS_IOC_FAILURE ;
 int bfa_fcdiag_set_busy_status (struct bfa_fcdiag_s*) ;
 int bfa_sm_send_event (struct bfa_dport_s*,int ) ;
 int bfa_trc (struct bfa_fcdiag_s*,scalar_t__) ;
 int stub1 (int ,int ) ;

void
bfa_fcdiag_iocdisable(struct bfa_s *bfa)
{
 struct bfa_fcdiag_s *fcdiag = BFA_FCDIAG_MOD(bfa);
 struct bfa_dport_s *dport = &fcdiag->dport;

 bfa_trc(fcdiag, fcdiag->lb.lock);
 if (fcdiag->lb.lock) {
  fcdiag->lb.status = BFA_STATUS_IOC_FAILURE;
  fcdiag->lb.cbfn(fcdiag->lb.cbarg, fcdiag->lb.status);
  fcdiag->lb.lock = 0;
  bfa_fcdiag_set_busy_status(fcdiag);
 }

 bfa_sm_send_event(dport, BFA_DPORT_SM_HWFAIL);
}
