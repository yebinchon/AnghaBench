
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_tskim_s {int tsk_tag; int bfa; int reqq_wait; } ;
typedef enum bfa_tskim_event { ____Placeholder_bfa_tskim_event } bfa_tskim_event ;





 int __bfa_cb_tskim_failed ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_tskim_s*,int ) ;
 int bfa_trc (int ,int) ;
 int bfa_tskim_iocdisable_ios (struct bfa_tskim_s*) ;
 int bfa_tskim_qcomp (struct bfa_tskim_s*,int ) ;
 int bfa_tskim_send_abort (struct bfa_tskim_s*) ;
 int bfa_tskim_sm_cleanup ;
 int bfa_tskim_sm_hcb ;

__attribute__((used)) static void
bfa_tskim_sm_cleanup_qfull(struct bfa_tskim_s *tskim,
  enum bfa_tskim_event event)
{
 bfa_trc(tskim->bfa, tskim->tsk_tag << 16 | event);

 switch (event) {
 case 130:
  bfa_reqq_wcancel(&tskim->reqq_wait);

 case 128:
  bfa_sm_set_state(tskim, bfa_tskim_sm_cleanup);
  bfa_tskim_send_abort(tskim);
  break;

 case 129:
  bfa_sm_set_state(tskim, bfa_tskim_sm_hcb);
  bfa_reqq_wcancel(&tskim->reqq_wait);
  bfa_tskim_iocdisable_ios(tskim);
  bfa_tskim_qcomp(tskim, __bfa_cb_tskim_failed);
  break;

 default:
  bfa_sm_fault(tskim->bfa, event);
 }
}
