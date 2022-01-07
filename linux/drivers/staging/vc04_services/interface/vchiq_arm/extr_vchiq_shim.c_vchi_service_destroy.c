
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shim_service {int handle; } ;
typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;


 scalar_t__ VCHIQ_SUCCESS ;
 int service_free (struct shim_service*) ;
 scalar_t__ vchiq_remove_service (int ) ;
 int vchiq_status_to_vchi (scalar_t__) ;

int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
{
 int32_t ret = -1;
 struct shim_service *service = (struct shim_service *)handle;

 if (service) {
  VCHIQ_STATUS_T status = vchiq_remove_service(service->handle);

  if (status == VCHIQ_SUCCESS) {
   service_free(service);
   service = ((void*)0);
  }

  ret = vchiq_status_to_vchi(status);
 }
 return ret;
}
