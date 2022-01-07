
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int dummy; } ;
struct vchiq_arm_state {scalar_t__ vc_suspend_state; scalar_t__ vc_resume_state; } ;


 scalar_t__ VC_RESUME_REQUESTED ;
 scalar_t__ VC_SUSPEND_IDLE ;
 struct vchiq_arm_state* vchiq_platform_get_arm_state (struct vchiq_state*) ;
 scalar_t__ vchiq_videocore_wanted (struct vchiq_state*) ;

__attribute__((used)) static inline int
need_resume(struct vchiq_state *state)
{
 struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);

 return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
   (arm_state->vc_resume_state < VC_RESUME_REQUESTED) &&
   vchiq_videocore_wanted(state);
}
