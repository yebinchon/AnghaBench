
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vchiq_service {size_t srvstate; int localport; TYPE_1__* state; int remove_event; int public_fourcc; } ;
typedef scalar_t__ VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_2__ {scalar_t__ slot_handler_thread; int id; } ;


 scalar_t__ VCHIQ_ERROR ;
 int VCHIQ_FOURCC_INVALID ;
 int VCHIQ_POLL_REMOVE ;
 scalar_t__ VCHIQ_RETRY ;
 size_t VCHIQ_SRVSTATE_FREE ;
 size_t VCHIQ_SRVSTATE_HIDDEN ;
 size_t VCHIQ_SRVSTATE_OPEN ;
 scalar_t__ VCHIQ_SUCCESS ;
 int WARN_ON (int) ;
 scalar_t__ current ;
 struct vchiq_service* find_service_by_handle (int ) ;
 int mark_service_closing (struct vchiq_service*) ;
 int request_poll (TYPE_1__*,struct vchiq_service*,int ) ;
 int * srvstate_names ;
 int unlock_service (struct vchiq_service*) ;
 scalar_t__ vchiq_close_service_internal (struct vchiq_service*,int ) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ) ;
 int vchiq_log_warning (int ,char*,int ,int ,int ) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

VCHIQ_STATUS_T
vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
{

 struct vchiq_service *service = find_service_by_handle(handle);
 VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

 if (!service)
  return VCHIQ_ERROR;

 vchiq_log_info(vchiq_core_log_level,
  "%d: remove_service:%d",
  service->state->id, service->localport);

 if (service->srvstate == VCHIQ_SRVSTATE_FREE) {
  unlock_service(service);
  return VCHIQ_ERROR;
 }

 mark_service_closing(service);

 if ((service->srvstate == VCHIQ_SRVSTATE_HIDDEN) ||
  (current == service->state->slot_handler_thread)) {


  service->public_fourcc = VCHIQ_FOURCC_INVALID;

  status = vchiq_close_service_internal(service,
   0 );
  WARN_ON(status == VCHIQ_RETRY);
 } else {

  request_poll(service->state, service, VCHIQ_POLL_REMOVE);
 }
 while (1) {
  if (wait_for_completion_interruptible(&service->remove_event)) {
   status = VCHIQ_RETRY;
   break;
  }

  if ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
   (service->srvstate == VCHIQ_SRVSTATE_OPEN))
   break;

  vchiq_log_warning(vchiq_core_log_level,
   "%d: remove_service:%d - waiting in state %s",
   service->state->id, service->localport,
   srvstate_names[service->srvstate]);
 }

 if ((status == VCHIQ_SUCCESS) &&
  (service->srvstate != VCHIQ_SRVSTATE_FREE))
  status = VCHIQ_ERROR;

 unlock_service(service);

 return status;
}
