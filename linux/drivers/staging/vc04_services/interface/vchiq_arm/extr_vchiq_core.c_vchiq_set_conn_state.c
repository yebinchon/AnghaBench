
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {size_t conn_state; int id; } ;
typedef size_t VCHIQ_CONNSTATE_T ;


 int * conn_state_names ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ) ;
 int vchiq_platform_conn_state_changed (struct vchiq_state*,size_t,size_t) ;

inline void
vchiq_set_conn_state(struct vchiq_state *state, VCHIQ_CONNSTATE_T newstate)
{
 VCHIQ_CONNSTATE_T oldstate = state->conn_state;

 vchiq_log_info(vchiq_core_log_level, "%d: %s->%s", state->id,
  conn_state_names[oldstate],
  conn_state_names[newstate]);
 state->conn_state = newstate;
 vchiq_platform_conn_state_changed(state, oldstate, newstate);
}
