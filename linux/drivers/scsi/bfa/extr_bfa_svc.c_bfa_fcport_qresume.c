
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcport_s {int dummy; } ;


 int BFA_FCPORT_SM_QRESUME ;
 int bfa_sm_send_event (struct bfa_fcport_s*,int ) ;

__attribute__((used)) static void
bfa_fcport_qresume(void *cbarg)
{
 struct bfa_fcport_s *fcport = cbarg;

 bfa_sm_send_event(fcport, BFA_FCPORT_SM_QRESUME);
}
