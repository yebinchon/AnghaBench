
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {scalar_t__ conn_state; } ;
typedef int VCHIQ_STATUS_T ;


 scalar_t__ VCHIQ_CONNSTATE_DISCONNECTED ;
 int VCHIQ_MAKE_MSG (int ,int ,int ) ;
 int VCHIQ_MSG_REMOTE_USE_ACTIVE ;
 int VCHIQ_RETRY ;
 int queue_message (struct vchiq_state*,int *,int ,int *,int *,int ,int ) ;

VCHIQ_STATUS_T vchiq_send_remote_use_active(struct vchiq_state *state)
{
 VCHIQ_STATUS_T status = VCHIQ_RETRY;

 if (state->conn_state != VCHIQ_CONNSTATE_DISCONNECTED)
  status = queue_message(state, ((void*)0),
   VCHIQ_MAKE_MSG(VCHIQ_MSG_REMOTE_USE_ACTIVE, 0, 0),
   ((void*)0), ((void*)0), 0, 0);
 return status;
}
