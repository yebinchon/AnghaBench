
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_header {int dummy; } ;
struct shim_service {int handle; int queue; } ;
typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;


 int vchiq_release_message (int ,struct vchiq_header*) ;
 struct vchiq_header* vchiu_queue_pop (int *) ;

int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle)
{
 struct shim_service *service = (struct shim_service *)handle;
 struct vchiq_header *header;

 header = vchiu_queue_pop(&service->queue);

 vchiq_release_message(service->handle, header);

 return 0;
}
