
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_arm_state {int vc_resume_state; int vc_resume_complete; } ;
typedef enum vc_resume_status { ____Placeholder_vc_resume_status } vc_resume_status ;


 int BUG () ;





 int VC_SUSPEND_IDLE ;
 int complete_all (int *) ;
 int reinit_completion (int *) ;
 int set_suspend_state (struct vchiq_arm_state*,int ) ;

void
set_resume_state(struct vchiq_arm_state *arm_state,
   enum vc_resume_status new_state)
{

 arm_state->vc_resume_state = new_state;


 switch (new_state) {
 case 132:
  break;
 case 131:
  reinit_completion(&arm_state->vc_resume_complete);
  break;
 case 129:
  break;
 case 130:
  break;
 case 128:
  complete_all(&arm_state->vc_resume_complete);
  set_suspend_state(arm_state, VC_SUSPEND_IDLE);
  break;
 default:
  BUG();
  break;
 }
}
