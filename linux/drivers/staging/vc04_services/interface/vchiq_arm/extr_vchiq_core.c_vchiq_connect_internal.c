
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {scalar_t__ conn_state; int connect; } ;
struct vchiq_service {scalar_t__ srvstate; } ;
typedef scalar_t__ VCHIQ_STATUS_T ;
typedef int VCHIQ_INSTANCE_T ;


 int QMFLAGS_IS_BLOCKING ;
 scalar_t__ VCHIQ_CONNSTATE_CONNECTED ;
 scalar_t__ VCHIQ_CONNSTATE_CONNECTING ;
 scalar_t__ VCHIQ_CONNSTATE_DISCONNECTED ;
 int VCHIQ_MAKE_MSG (int ,int ,int ) ;
 int VCHIQ_MSG_CONNECT ;
 scalar_t__ VCHIQ_RETRY ;
 scalar_t__ VCHIQ_SRVSTATE_HIDDEN ;
 int VCHIQ_SRVSTATE_LISTENING ;
 scalar_t__ VCHIQ_SUCCESS ;
 int complete (int *) ;
 struct vchiq_service* next_service_by_instance (struct vchiq_state*,int ,int*) ;
 scalar_t__ queue_message (struct vchiq_state*,int *,int ,int *,int *,int ,int ) ;
 int unlock_service (struct vchiq_service*) ;
 int vchiq_set_conn_state (struct vchiq_state*,scalar_t__) ;
 int vchiq_set_service_state (struct vchiq_service*,int ) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

VCHIQ_STATUS_T
vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
{
 struct vchiq_service *service;
 int i;


 i = 0;
 while ((service = next_service_by_instance(state, instance,
  &i)) != ((void*)0)) {
  if (service->srvstate == VCHIQ_SRVSTATE_HIDDEN)
   vchiq_set_service_state(service,
    VCHIQ_SRVSTATE_LISTENING);
  unlock_service(service);
 }

 if (state->conn_state == VCHIQ_CONNSTATE_DISCONNECTED) {
  if (queue_message(state, ((void*)0),
   VCHIQ_MAKE_MSG(VCHIQ_MSG_CONNECT, 0, 0), ((void*)0), ((void*)0),
   0, QMFLAGS_IS_BLOCKING) == VCHIQ_RETRY)
   return VCHIQ_RETRY;

  vchiq_set_conn_state(state, VCHIQ_CONNSTATE_CONNECTING);
 }

 if (state->conn_state == VCHIQ_CONNSTATE_CONNECTING) {
  if (wait_for_completion_interruptible(&state->connect))
   return VCHIQ_RETRY;

  vchiq_set_conn_state(state, VCHIQ_CONNSTATE_CONNECTED);
  complete(&state->connect);
 }

 return VCHIQ_SUCCESS;
}
