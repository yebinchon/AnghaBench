
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {scalar_t__ platform_state; } ;
struct vchiq_2835_state {int inited; int arm_state; } ;
typedef scalar_t__ VCHIQ_STATUS_T ;


 int GFP_KERNEL ;
 scalar_t__ VCHIQ_ERROR ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ kzalloc (int,int ) ;
 scalar_t__ vchiq_arm_init_state (struct vchiq_state*,int *) ;

VCHIQ_STATUS_T
vchiq_platform_init_state(struct vchiq_state *state)
{
 VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
 struct vchiq_2835_state *platform_state;

 state->platform_state = kzalloc(sizeof(*platform_state), GFP_KERNEL);
 if (!state->platform_state)
  return VCHIQ_ERROR;

 platform_state = (struct vchiq_2835_state *)state->platform_state;

 platform_state->inited = 1;
 status = vchiq_arm_init_state(state, &platform_state->arm_state);

 if (status != VCHIQ_SUCCESS)
  platform_state->inited = 0;

 return status;
}
