
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {int dio; TYPE_1__* bfa; int itnim; } ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {int bfad; } ;


 int BFA_IOIM_SM_HCB ;
 int BFI_IOIM_STS_PATHTOV ;
 int bfa_cb_ioim_done (int ,int ,int ,int ,int ,int *,int ) ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int path_tov_expired ;

__attribute__((used)) static void
__bfa_cb_ioim_pathtov(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_ioim_s *ioim = cbarg;

 bfa_stats(ioim->itnim, path_tov_expired);
 if (!complete) {
  bfa_sm_send_event(ioim, BFA_IOIM_SM_HCB);
  return;
 }

 bfa_cb_ioim_done(ioim->bfa->bfad, ioim->dio, BFI_IOIM_STS_PATHTOV,
     0, 0, ((void*)0), 0);
}
