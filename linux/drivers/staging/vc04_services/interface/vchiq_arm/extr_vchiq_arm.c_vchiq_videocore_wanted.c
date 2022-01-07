
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int dummy; } ;
struct vchiq_arm_state {scalar_t__ resume_blocked; int videocore_use_count; scalar_t__ blocked_count; } ;


 struct vchiq_arm_state* vchiq_platform_get_arm_state (struct vchiq_state*) ;
 int vchiq_platform_videocore_wanted (struct vchiq_state*) ;

int
vchiq_videocore_wanted(struct vchiq_state *state)
{
 struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);

 if (!arm_state)

  return 1;
 else if (arm_state->blocked_count)
  return 1;
 else if (!arm_state->videocore_use_count)

  if (arm_state->resume_blocked)
   return 0;
  else
   return vchiq_platform_videocore_wanted(state);
 else

  return 1;
}
