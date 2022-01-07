
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_header {int dummy; } ;
struct shim_service {int handle; int callback_param; int (* callback ) (int ,int ,void*) ;int queue; } ;
typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_REASON_T ;






 scalar_t__ VCHIQ_GET_SERVICE_USERDATA (int ) ;



 int VCHIQ_SUCCESS ;
 int VCHI_CALLBACK_BULK_RECEIVED ;
 int VCHI_CALLBACK_BULK_RECEIVE_ABORTED ;
 int VCHI_CALLBACK_BULK_SENT ;
 int VCHI_CALLBACK_BULK_TRANSMIT_ABORTED ;
 int VCHI_CALLBACK_MSG_AVAILABLE ;
 int VCHI_CALLBACK_SERVICE_CLOSED ;
 int WARN (int,char*) ;
 int stub1 (int ,int ,void*) ;
 int stub2 (int ,int ,void*) ;
 int stub3 (int ,int ,void*) ;
 int stub4 (int ,int ,void*) ;
 int stub5 (int ,int ,void*) ;
 int stub6 (int ,int ,void*) ;
 int vchiq_release_message (int ,struct vchiq_header*) ;
 int vchiu_queue_push (int *,struct vchiq_header*) ;

__attribute__((used)) static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
        struct vchiq_header *header,
        VCHIQ_SERVICE_HANDLE_T handle,
        void *bulk_user)
{
 struct shim_service *service =
  (struct shim_service *)VCHIQ_GET_SERVICE_USERDATA(handle);

 if (!service->callback)
  goto release;

 switch (reason) {
 case 130:
  vchiu_queue_push(&service->queue, header);

  service->callback(service->callback_param,
      VCHI_CALLBACK_MSG_AVAILABLE, ((void*)0));

  goto done;

 case 131:
  service->callback(service->callback_param,
      VCHI_CALLBACK_BULK_SENT, bulk_user);
  break;

 case 133:
  service->callback(service->callback_param,
      VCHI_CALLBACK_BULK_RECEIVED, bulk_user);
  break;

 case 129:
  service->callback(service->callback_param,
      VCHI_CALLBACK_SERVICE_CLOSED, ((void*)0));
  break;

 case 128:

  break;

 case 132:
  service->callback(service->callback_param,
      VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
      bulk_user);
  break;

 case 134:
  service->callback(service->callback_param,
      VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
      bulk_user);
  break;

 default:
  WARN(1, "not supported\n");
  break;
 }

release:
 vchiq_release_message(service->handle, header);
done:
 return VCHIQ_SUCCESS;
}
