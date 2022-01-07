
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dport_s {int bfa; int reqq_wait; } ;
typedef enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;




 int BFA_STATUS_FAILED ;
 int BFI_DPORT_START ;
 int bfa_cb_fcdiag_dport (struct bfa_dport_s*,int ) ;
 int bfa_dport_send_req (struct bfa_dport_s*,int ) ;
 int bfa_dport_sm_disabled ;
 int bfa_dport_sm_starting ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_dport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_dport_sm_starting_qwait(struct bfa_dport_s *dport,
       enum bfa_dport_sm_event event)
{
 bfa_trc(dport->bfa, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(dport, bfa_dport_sm_starting);
  bfa_dport_send_req(dport, BFI_DPORT_START);
  break;

 case 129:
  bfa_reqq_wcancel(&dport->reqq_wait);
  bfa_sm_set_state(dport, bfa_dport_sm_disabled);
  bfa_cb_fcdiag_dport(dport, BFA_STATUS_FAILED);
  break;

 default:
  bfa_sm_fault(dport->bfa, event);
 }
}
