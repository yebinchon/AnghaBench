
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onlines; } ;
struct bfa_fcs_itnim_s {TYPE_2__* rport; TYPE_1__ stats; } ;
struct TYPE_4__ {int pid; } ;


 int BFA_FCS_ITNIM_SM_HAL_ONLINE ;
 int BFA_FCS_PID_IS_WKA (int ) ;
 int bfa_sm_send_event (struct bfa_fcs_itnim_s*,int ) ;

void
bfa_fcs_itnim_brp_online(struct bfa_fcs_itnim_s *itnim)
{
 itnim->stats.onlines++;

 if (!BFA_FCS_PID_IS_WKA(itnim->rport->pid))
  bfa_sm_send_event(itnim, BFA_FCS_ITNIM_SM_HAL_ONLINE);
}
