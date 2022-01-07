
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {int bfa; int hcb_qe; TYPE_1__* iosp; int reqq; int itnim; int io_cbfn; } ;
typedef enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {int reqq_wait; int abort_explicit; } ;


 int BFA_FALSE ;







 int BFA_TRUE ;
 int __bfa_cb_ioim_abort ;
 int __bfa_cb_ioim_comp ;
 int __bfa_cb_ioim_failed ;
 int __bfa_cb_ioim_good_comp ;
 int bfa_cb_queue (int ,int *,int ,struct bfa_ioim_s*) ;
 int bfa_ioim_maxretry_reached (struct bfa_ioim_s*) ;
 int bfa_ioim_move_to_comp_q (struct bfa_ioim_s*) ;
 int bfa_ioim_send_abort (struct bfa_ioim_s*) ;
 int bfa_ioim_sm_abort ;
 int bfa_ioim_sm_abort_qfull ;
 int bfa_ioim_sm_cleanup ;
 int bfa_ioim_sm_cleanup_qfull ;
 int bfa_ioim_sm_cmnd_retry ;
 int bfa_ioim_sm_hcb ;
 int bfa_ioim_sm_hcb_free ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_ioim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int qwait ;

__attribute__((used)) static void
bfa_ioim_sm_active(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
 switch (event) {
 case 131:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe,
         __bfa_cb_ioim_good_comp, ioim);
  break;

 case 132:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_comp,
         ioim);
  break;

 case 130:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb_free);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_comp,
         ioim);
  break;

 case 134:
  ioim->iosp->abort_explicit = BFA_TRUE;
  ioim->io_cbfn = __bfa_cb_ioim_abort;

  if (bfa_ioim_send_abort(ioim))
   bfa_sm_set_state(ioim, bfa_ioim_sm_abort);
  else {
   bfa_sm_set_state(ioim, bfa_ioim_sm_abort_qfull);
   bfa_stats(ioim->itnim, qwait);
   bfa_reqq_wait(ioim->bfa, ioim->reqq,
       &ioim->iosp->reqq_wait);
  }
  break;

 case 133:
  ioim->iosp->abort_explicit = BFA_FALSE;
  ioim->io_cbfn = __bfa_cb_ioim_failed;

  if (bfa_ioim_send_abort(ioim))
   bfa_sm_set_state(ioim, bfa_ioim_sm_cleanup);
  else {
   bfa_sm_set_state(ioim, bfa_ioim_sm_cleanup_qfull);
   bfa_stats(ioim->itnim, qwait);
   bfa_reqq_wait(ioim->bfa, ioim->reqq,
       &ioim->iosp->reqq_wait);
  }
  break;

 case 129:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
         ioim);
  break;

 case 128:
  if (bfa_ioim_maxretry_reached(ioim)) {

   bfa_sm_set_state(ioim, bfa_ioim_sm_hcb_free);
   bfa_ioim_move_to_comp_q(ioim);
   bfa_cb_queue(ioim->bfa, &ioim->hcb_qe,
     __bfa_cb_ioim_failed, ioim);
   break;
  }

  bfa_sm_set_state(ioim, bfa_ioim_sm_cmnd_retry);
  break;

 default:
  bfa_sm_fault(ioim->bfa, event);
 }
}
