
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcport_s {int diag_busy; } ;
struct TYPE_2__ {scalar_t__ lock; } ;
struct bfa_fcdiag_s {TYPE_1__ lb; int bfa; } ;


 int BFA_FALSE ;
 struct bfa_fcport_s* BFA_FCPORT_MOD (int ) ;
 int BFA_TRUE ;

__attribute__((used)) static void
bfa_fcdiag_set_busy_status(struct bfa_fcdiag_s *fcdiag)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(fcdiag->bfa);

 if (fcdiag->lb.lock)
  fcport->diag_busy = BFA_TRUE;
 else
  fcport->diag_busy = BFA_FALSE;
}
