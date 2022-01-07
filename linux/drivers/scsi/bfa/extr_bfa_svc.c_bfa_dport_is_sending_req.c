
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dport_s {int dummy; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int bfa_dport_sm_disabling ;
 int bfa_dport_sm_disabling_qwait ;
 int bfa_dport_sm_enabling ;
 int bfa_dport_sm_enabling_qwait ;
 int bfa_dport_sm_starting ;
 int bfa_dport_sm_starting_qwait ;
 scalar_t__ bfa_sm_cmp_state (struct bfa_dport_s*,int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_dport_is_sending_req(struct bfa_dport_s *dport)
{
 if (bfa_sm_cmp_state(dport, bfa_dport_sm_enabling) ||
     bfa_sm_cmp_state(dport, bfa_dport_sm_enabling_qwait) ||
     bfa_sm_cmp_state(dport, bfa_dport_sm_disabling) ||
     bfa_sm_cmp_state(dport, bfa_dport_sm_disabling_qwait) ||
     bfa_sm_cmp_state(dport, bfa_dport_sm_starting) ||
     bfa_sm_cmp_state(dport, bfa_dport_sm_starting_qwait)) {
  return BFA_TRUE;
 } else {
  return BFA_FALSE;
 }
}
