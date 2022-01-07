
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vchiq_header {int size; void* data; } ;
struct vchi_held_msg {struct vchiq_header* message; struct opaque_vchi_service_t* service; } ;
struct shim_service {scalar_t__ handle; int queue; } ;
struct opaque_vchi_service_t {int dummy; } ;
typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef scalar_t__ VCHI_FLAGS_T ;


 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ;
 scalar_t__ VCHI_FLAGS_NONE ;
 int WARN_ON (int) ;
 scalar_t__ vchiu_queue_is_empty (int *) ;
 struct vchiq_header* vchiu_queue_pop (int *) ;

int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
 void **data,
 uint32_t *msg_size,
 VCHI_FLAGS_T flags,
 struct vchi_held_msg *message_handle)
{
 struct shim_service *service = (struct shim_service *)handle;
 struct vchiq_header *header;

 WARN_ON((flags != VCHI_FLAGS_NONE) &&
  (flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));

 if (flags == VCHI_FLAGS_NONE)
  if (vchiu_queue_is_empty(&service->queue))
   return -1;

 header = vchiu_queue_pop(&service->queue);

 *data = header->data;
 *msg_size = header->size;
 message_handle->service =
  (struct opaque_vchi_service_t *)(long)service->handle;
 message_handle->message = header;

 return 0;
}
