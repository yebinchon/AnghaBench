
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int id; } ;
struct vchiq_service {int srvstate; int remove_event; int localport; struct vchiq_state* state; } ;




 int VCHIQ_SRVSTATE_FREE ;



 int complete (int *) ;
 int * srvstate_names ;
 int unlock_service (struct vchiq_service*) ;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*,int ,int ,int ) ;
 int vchiq_log_info (int ,char*,int ,int ) ;
 int vchiq_set_service_state (struct vchiq_service*,int ) ;

void
vchiq_free_service_internal(struct vchiq_service *service)
{
 struct vchiq_state *state = service->state;

 vchiq_log_info(vchiq_core_log_level, "%d: fsi - (%d)",
  state->id, service->localport);

 switch (service->srvstate) {
 case 128:
 case 132:
 case 130:
 case 129:
 case 131:
  break;
 default:
  vchiq_log_error(vchiq_core_log_level,
   "%d: fsi - (%d) in state %s",
   state->id, service->localport,
   srvstate_names[service->srvstate]);
  return;
 }

 vchiq_set_service_state(service, VCHIQ_SRVSTATE_FREE);

 complete(&service->remove_event);


 unlock_service(service);
}
