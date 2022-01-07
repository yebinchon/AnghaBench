
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int dummy; } ;
struct vchiq_arm_state {scalar_t__ first_connect; int suspend_timer; struct vchiq_state* state; scalar_t__ suspend_timer_running; int suspend_timer_timeout; int blocked_blocker; int resume_blocker; int vc_resume_complete; int vc_suspend_complete; int ka_release_count; int ka_use_ack_count; int ka_use_count; int ka_evt; int susp_res_lock; } ;
typedef int VCHIQ_STATUS_T ;


 int SUSPEND_TIMER_TIMEOUT_MS ;
 int VCHIQ_SUCCESS ;
 int VC_RESUME_RESUMED ;
 int atomic_set (int *,int ) ;
 int complete_all (int *) ;
 int init_completion (int *) ;
 int rwlock_init (int *) ;
 int set_resume_state (struct vchiq_arm_state*,int ) ;
 int suspend_timer_callback ;
 int timer_setup (int *,int ,int ) ;

VCHIQ_STATUS_T
vchiq_arm_init_state(struct vchiq_state *state,
       struct vchiq_arm_state *arm_state)
{
 if (arm_state) {
  rwlock_init(&arm_state->susp_res_lock);

  init_completion(&arm_state->ka_evt);
  atomic_set(&arm_state->ka_use_count, 0);
  atomic_set(&arm_state->ka_use_ack_count, 0);
  atomic_set(&arm_state->ka_release_count, 0);

  init_completion(&arm_state->vc_suspend_complete);

  init_completion(&arm_state->vc_resume_complete);


  set_resume_state(arm_state, VC_RESUME_RESUMED);

  init_completion(&arm_state->resume_blocker);


  complete_all(&arm_state->resume_blocker);

  init_completion(&arm_state->blocked_blocker);


  complete_all(&arm_state->blocked_blocker);

  arm_state->suspend_timer_timeout = SUSPEND_TIMER_TIMEOUT_MS;
  arm_state->suspend_timer_running = 0;
  arm_state->state = state;
  timer_setup(&arm_state->suspend_timer, suspend_timer_callback,
       0);

  arm_state->first_connect = 0;

 }
 return VCHIQ_SUCCESS;
}
