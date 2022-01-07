
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dport_s {int dummy; } ;


 int BFA_DPORT_SM_QRESUME ;
 int bfa_sm_send_event (struct bfa_dport_s*,int ) ;

__attribute__((used)) static void
bfa_dport_qresume(void *cbarg)
{
 struct bfa_dport_s *dport = cbarg;

 bfa_sm_send_event(dport, BFA_DPORT_SM_QRESUME);
}
