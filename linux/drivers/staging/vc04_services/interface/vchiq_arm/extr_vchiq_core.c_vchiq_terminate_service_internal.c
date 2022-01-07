
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int id; } ;
struct vchiq_service {int remoteport; int localport; struct vchiq_state* state; } ;


 int VCHIQ_POLL_REMOVE ;
 int mark_service_closing (struct vchiq_service*) ;
 int request_poll (struct vchiq_state*,struct vchiq_service*,int ) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ) ;

void
vchiq_terminate_service_internal(struct vchiq_service *service)
{
 struct vchiq_state *state = service->state;

 vchiq_log_info(vchiq_core_log_level, "%d: tsi - (%d<->%d)",
  state->id, service->localport, service->remoteport);

 mark_service_closing(service);


 request_poll(state, service, VCHIQ_POLL_REMOVE);
}
