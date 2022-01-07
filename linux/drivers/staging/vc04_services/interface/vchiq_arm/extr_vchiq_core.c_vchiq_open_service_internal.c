
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fourcc; } ;
struct vchiq_service {int client_id; scalar_t__ srvstate; int ref_count; TYPE_2__* state; int remove_event; int localport; int version_min; int version; TYPE_1__ base; } ;
struct vchiq_open_payload {int member_1; int member_3; int member_2; int member_0; } ;
typedef int payload ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_4__ {int id; } ;


 int QMFLAGS_IS_BLOCKING ;
 scalar_t__ VCHIQ_ERROR ;
 int VCHIQ_MAKE_MSG (int ,int ,int ) ;
 int VCHIQ_MSG_OPEN ;
 scalar_t__ VCHIQ_RETRY ;
 int VCHIQ_SERVICE_STATS_INC (struct vchiq_service*,int ) ;
 scalar_t__ VCHIQ_SRVSTATE_CLOSEWAIT ;
 scalar_t__ VCHIQ_SRVSTATE_OPEN ;
 scalar_t__ VCHIQ_SRVSTATE_OPENSYNC ;
 scalar_t__ VCHIQ_SUCCESS ;
 int error_count ;
 int memcpy_copy_callback ;
 scalar_t__ queue_message (TYPE_2__*,int *,int ,int ,struct vchiq_open_payload*,int,int ) ;
 int * srvstate_names ;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*,int ,int ,int ) ;
 int vchiq_release_service_internal (struct vchiq_service*) ;
 int vchiq_use_service_internal (struct vchiq_service*) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

VCHIQ_STATUS_T
vchiq_open_service_internal(struct vchiq_service *service, int client_id)
{
 struct vchiq_open_payload payload = {
  service->base.fourcc,
  client_id,
  service->version,
  service->version_min
 };
 VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

 service->client_id = client_id;
 vchiq_use_service_internal(service);
 status = queue_message(service->state,
          ((void*)0),
          VCHIQ_MAKE_MSG(VCHIQ_MSG_OPEN,
           service->localport,
           0),
          memcpy_copy_callback,
          &payload,
          sizeof(payload),
          QMFLAGS_IS_BLOCKING);
 if (status == VCHIQ_SUCCESS) {

  if (wait_for_completion_interruptible(&service->remove_event)) {
   status = VCHIQ_RETRY;
   vchiq_release_service_internal(service);
  } else if ((service->srvstate != VCHIQ_SRVSTATE_OPEN) &&
   (service->srvstate != VCHIQ_SRVSTATE_OPENSYNC)) {
   if (service->srvstate != VCHIQ_SRVSTATE_CLOSEWAIT)
    vchiq_log_error(vchiq_core_log_level,
     "%d: osi - srvstate = %s (ref %d)",
     service->state->id,
     srvstate_names[service->srvstate],
     service->ref_count);
   status = VCHIQ_ERROR;
   VCHIQ_SERVICE_STATS_INC(service, error_count);
   vchiq_release_service_internal(service);
  }
 }
 return status;
}
