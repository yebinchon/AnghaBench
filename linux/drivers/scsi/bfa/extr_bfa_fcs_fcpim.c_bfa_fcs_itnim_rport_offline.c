
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offlines; } ;
struct bfa_fcs_itnim_s {TYPE_1__ stats; } ;


 int BFA_FCS_ITNIM_SM_OFFLINE ;
 int bfa_sm_send_event (struct bfa_fcs_itnim_s*,int ) ;

void
bfa_fcs_itnim_rport_offline(struct bfa_fcs_itnim_s *itnim)
{
 itnim->stats.offlines++;
 bfa_sm_send_event(itnim, BFA_FCS_ITNIM_SM_OFFLINE);
}
