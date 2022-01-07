
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; } ;
struct bfa_fcs_itnim_s {TYPE_1__ stats; } ;


 int BFA_FCS_ITNIM_SM_TIMEOUT ;
 int bfa_sm_send_event (struct bfa_fcs_itnim_s*,int ) ;

__attribute__((used)) static void
bfa_fcs_itnim_timeout(void *arg)
{
 struct bfa_fcs_itnim_s *itnim = (struct bfa_fcs_itnim_s *) arg;

 itnim->stats.timeout++;
 bfa_sm_send_event(itnim, BFA_FCS_ITNIM_SM_TIMEOUT);
}
