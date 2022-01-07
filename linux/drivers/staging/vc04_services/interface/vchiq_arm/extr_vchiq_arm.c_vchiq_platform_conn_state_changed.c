
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int threadname ;
struct vchiq_state {int id; scalar_t__ conn_state; } ;
struct vchiq_arm_state {int first_connect; int susp_res_lock; int ka_thread; } ;
typedef int VCHIQ_CONNSTATE_T ;


 scalar_t__ IS_ERR (int ) ;
 scalar_t__ VCHIQ_CONNSTATE_CONNECTED ;
 int get_conn_state_name (int ) ;
 int kthread_create (int *,void*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int vchiq_keepalive_thread_func ;
 int vchiq_log_error (int ,char*,char*) ;
 int vchiq_log_info (int ,char*,int,int ,int ) ;
 struct vchiq_arm_state* vchiq_platform_get_arm_state (struct vchiq_state*) ;
 int vchiq_susp_log_level ;
 int wake_up_process (int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void vchiq_platform_conn_state_changed(struct vchiq_state *state,
           VCHIQ_CONNSTATE_T oldstate,
           VCHIQ_CONNSTATE_T newstate)
{
 struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);

 vchiq_log_info(vchiq_susp_log_level, "%d: %s->%s", state->id,
  get_conn_state_name(oldstate), get_conn_state_name(newstate));
 if (state->conn_state == VCHIQ_CONNSTATE_CONNECTED) {
  write_lock_bh(&arm_state->susp_res_lock);
  if (!arm_state->first_connect) {
   char threadname[16];

   arm_state->first_connect = 1;
   write_unlock_bh(&arm_state->susp_res_lock);
   snprintf(threadname, sizeof(threadname), "vchiq-keep/%d",
    state->id);
   arm_state->ka_thread = kthread_create(
    &vchiq_keepalive_thread_func,
    (void *)state,
    threadname);
   if (IS_ERR(arm_state->ka_thread)) {
    vchiq_log_error(vchiq_susp_log_level,
     "vchiq: FATAL: couldn't create thread %s",
     threadname);
   } else {
    wake_up_process(arm_state->ka_thread);
   }
  } else
   write_unlock_bh(&arm_state->susp_res_lock);
 }
}
