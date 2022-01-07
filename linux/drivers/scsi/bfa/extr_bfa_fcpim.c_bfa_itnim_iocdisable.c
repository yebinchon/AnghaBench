
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int dummy; } ;


 int BFA_ITNIM_SM_HWFAIL ;
 int bfa_sm_send_event (struct bfa_itnim_s*,int ) ;
 int bfa_stats (struct bfa_itnim_s*,int ) ;
 int ioc_disabled ;

void
bfa_itnim_iocdisable(struct bfa_itnim_s *itnim)
{
 bfa_stats(itnim, ioc_disabled);
 bfa_sm_send_event(itnim, BFA_ITNIM_SM_HWFAIL);
}
