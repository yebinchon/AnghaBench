
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_fcport_s {int dummy; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;
 int BFA_FCPORT_SM_HWFAIL ;
 int bfa_sm_send_event (struct bfa_fcport_s*,int ) ;
 int bfa_trunk_iocdisable (struct bfa_s*) ;

void
bfa_fcport_iocdisable(struct bfa_s *bfa)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 bfa_sm_send_event(fcport, BFA_FCPORT_SM_HWFAIL);
 bfa_trunk_iocdisable(bfa);
}
