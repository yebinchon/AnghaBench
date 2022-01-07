
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_tskim_s {int tsk_tag; int bfa; int reqq_wait; TYPE_1__* itnim; } ;
typedef enum bfa_tskim_event { ____Placeholder_bfa_tskim_event } bfa_tskim_event ;
struct TYPE_2__ {int reqq; } ;





 int __bfa_cb_tskim_failed ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_tskim_s*,int ) ;
 int bfa_stats (TYPE_1__*,int ) ;
 int bfa_trc (int ,int) ;
 int bfa_tskim_cleanup_ios (struct bfa_tskim_s*) ;
 int bfa_tskim_iocdisable_ios (struct bfa_tskim_s*) ;
 int bfa_tskim_qcomp (struct bfa_tskim_s*,int ) ;
 int bfa_tskim_send_abort (struct bfa_tskim_s*) ;
 int bfa_tskim_sm_cleanup ;
 int bfa_tskim_sm_cleanup_qfull ;
 int bfa_tskim_sm_hcb ;
 int bfa_tskim_sm_iocleanup ;
 int tm_qwait ;

__attribute__((used)) static void
bfa_tskim_sm_active(struct bfa_tskim_s *tskim, enum bfa_tskim_event event)
{
 bfa_trc(tskim->bfa, tskim->tsk_tag << 16 | event);

 switch (event) {
 case 129:
  bfa_sm_set_state(tskim, bfa_tskim_sm_iocleanup);
  bfa_tskim_cleanup_ios(tskim);
  break;

 case 130:
  bfa_sm_set_state(tskim, bfa_tskim_sm_cleanup);
  if (!bfa_tskim_send_abort(tskim)) {
   bfa_sm_set_state(tskim, bfa_tskim_sm_cleanup_qfull);
   bfa_stats(tskim->itnim, tm_qwait);
   bfa_reqq_wait(tskim->bfa, tskim->itnim->reqq,
    &tskim->reqq_wait);
  }
  break;

 case 128:
  bfa_sm_set_state(tskim, bfa_tskim_sm_hcb);
  bfa_tskim_iocdisable_ios(tskim);
  bfa_tskim_qcomp(tskim, __bfa_cb_tskim_failed);
  break;

 default:
  bfa_sm_fault(tskim->bfa, event);
 }
}
