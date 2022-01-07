
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_ioim_s {int bfa; int hcb_qe; TYPE_2__* itnim; int nsges; int qe; TYPE_1__* fcpim; } ;
typedef enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_5__ {int pending_q; } ;
struct TYPE_4__ {int ioim_comp_q; } ;





 int BFI_SGE_INLINE ;
 int WARN_ON (int) ;
 int __bfa_cb_ioim_abort ;
 int __bfa_cb_ioim_pathtov ;
 int bfa_cb_queue (int ,int *,int ,struct bfa_ioim_s*) ;
 int bfa_ioim_move_to_comp_q (struct bfa_ioim_s*) ;
 int bfa_ioim_send_ioreq (struct bfa_ioim_s*) ;
 int bfa_ioim_sgpg_alloc (struct bfa_ioim_s*) ;
 int bfa_ioim_sm_active ;
 int bfa_ioim_sm_hcb ;
 int bfa_ioim_sm_qfull ;
 int bfa_ioim_sm_sgalloc ;
 int bfa_itnim_hold_io (TYPE_2__*) ;
 int bfa_itnim_is_online (TYPE_2__*) ;
 int bfa_q_is_on_q (int *,struct bfa_ioim_s*) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_ioim_s*,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void
bfa_ioim_sm_uninit(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
 switch (event) {
 case 128:
  if (!bfa_itnim_is_online(ioim->itnim)) {
   if (!bfa_itnim_hold_io(ioim->itnim)) {
    bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
    list_del(&ioim->qe);
    list_add_tail(&ioim->qe,
     &ioim->fcpim->ioim_comp_q);
    bfa_cb_queue(ioim->bfa, &ioim->hcb_qe,
      __bfa_cb_ioim_pathtov, ioim);
   } else {
    list_del(&ioim->qe);
    list_add_tail(&ioim->qe,
     &ioim->itnim->pending_q);
   }
   break;
  }

  if (ioim->nsges > BFI_SGE_INLINE) {
   if (!bfa_ioim_sgpg_alloc(ioim)) {
    bfa_sm_set_state(ioim, bfa_ioim_sm_sgalloc);
    return;
   }
  }

  if (!bfa_ioim_send_ioreq(ioim)) {
   bfa_sm_set_state(ioim, bfa_ioim_sm_qfull);
   break;
  }

  bfa_sm_set_state(ioim, bfa_ioim_sm_active);
  break;

 case 129:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe,
    __bfa_cb_ioim_pathtov, ioim);
  break;

 case 130:




  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  WARN_ON(!bfa_q_is_on_q(&ioim->itnim->pending_q, ioim));
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe,
   __bfa_cb_ioim_abort, ioim);
  break;

 default:
  bfa_sm_fault(ioim->bfa, event);
 }
}
