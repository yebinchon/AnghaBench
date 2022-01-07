
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {TYPE_1__* itnim; } ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {int pending_q; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int bfa_ioim_sm_abort ;
 int bfa_ioim_sm_abort_qfull ;
 int bfa_ioim_sm_hcb ;
 int bfa_ioim_sm_hcb_free ;
 int bfa_ioim_sm_resfree ;
 int bfa_ioim_sm_uninit ;
 int bfa_q_is_on_q (int *,struct bfa_ioim_s*) ;
 scalar_t__ bfa_sm_cmp_state (struct bfa_ioim_s*,int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_ioim_is_abortable(struct bfa_ioim_s *ioim)
{
 if ((bfa_sm_cmp_state(ioim, bfa_ioim_sm_uninit) &&
     (!bfa_q_is_on_q(&ioim->itnim->pending_q, ioim))) ||
     (bfa_sm_cmp_state(ioim, bfa_ioim_sm_abort)) ||
     (bfa_sm_cmp_state(ioim, bfa_ioim_sm_abort_qfull)) ||
     (bfa_sm_cmp_state(ioim, bfa_ioim_sm_hcb)) ||
     (bfa_sm_cmp_state(ioim, bfa_ioim_sm_hcb_free)) ||
     (bfa_sm_cmp_state(ioim, bfa_ioim_sm_resfree)))
  return BFA_FALSE;

 return BFA_TRUE;
}
