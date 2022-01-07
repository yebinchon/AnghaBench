
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {scalar_t__ conn_state; struct vchiq_service_quota* service_quotas; int slot_mutex; int recycle_mutex; } ;
struct vchiq_service_quota {int quota_event; } ;
struct vchiq_service {int closing; size_t localport; struct vchiq_state* state; } ;


 scalar_t__ VCHIQ_CONNSTATE_PAUSE_SENT ;
 int complete (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mark_service_closing_internal(struct vchiq_service *service, int sh_thread)
{
 struct vchiq_state *state = service->state;
 struct vchiq_service_quota *service_quota;

 service->closing = 1;


 mutex_lock(&state->recycle_mutex);
 mutex_unlock(&state->recycle_mutex);
 if (!sh_thread || (state->conn_state != VCHIQ_CONNSTATE_PAUSE_SENT)) {




  mutex_lock(&state->slot_mutex);
  mutex_unlock(&state->slot_mutex);
 }


 service_quota = &state->service_quotas[service->localport];
 complete(&service_quota->quota_event);
}
