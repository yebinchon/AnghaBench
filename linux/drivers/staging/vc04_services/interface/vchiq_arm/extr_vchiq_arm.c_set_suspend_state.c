
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_arm_state {int vc_suspend_state; int vc_suspend_complete; int vc_resume_complete; int vc_resume_state; } ;
typedef enum vc_suspend_status { ____Placeholder_vc_suspend_status } vc_suspend_status ;


 int BUG () ;
 int VC_RESUME_IDLE ;
 int VC_RESUME_RESUMED ;







 int complete_all (int *) ;
 int reinit_completion (int *) ;
 int set_resume_state (struct vchiq_arm_state*,int ) ;

void
set_suspend_state(struct vchiq_arm_state *arm_state,
    enum vc_suspend_status new_state)
{

 arm_state->vc_suspend_state = new_state;


 switch (new_state) {
 case 133:
  complete_all(&arm_state->vc_suspend_complete);
  break;
 case 130:
  complete_all(&arm_state->vc_suspend_complete);
  break;
 case 134:
  complete_all(&arm_state->vc_suspend_complete);
  arm_state->vc_resume_state = VC_RESUME_RESUMED;
  complete_all(&arm_state->vc_resume_complete);
  break;
 case 132:
  reinit_completion(&arm_state->vc_suspend_complete);
  break;
 case 129:
  break;
 case 131:
  set_resume_state(arm_state, VC_RESUME_IDLE);
  break;
 case 128:
  complete_all(&arm_state->vc_suspend_complete);
  break;
 default:
  BUG();
  break;
 }
}
