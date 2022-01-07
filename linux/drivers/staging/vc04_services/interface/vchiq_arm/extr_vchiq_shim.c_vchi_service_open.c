
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vchiq_service_params {int version_min; int version; struct shim_service* userdata; int callback; int fourcc; } ;
struct shim_service {int handle; } ;
struct TYPE_2__ {int version_min; int version; } ;
struct service_creation {TYPE_1__ version; int service_id; } ;
typedef int params ;
typedef int int32_t ;
typedef int * VCHI_SERVICE_HANDLE_T ;
typedef int VCHI_INSTANCE_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
typedef int VCHIQ_INSTANCE_T ;


 scalar_t__ VCHIQ_SUCCESS ;
 int memset (struct vchiq_service_params*,int ,int) ;
 struct shim_service* service_alloc (int ,struct service_creation*) ;
 int service_free (struct shim_service*) ;
 int shim_callback ;
 scalar_t__ vchiq_open_service (int ,struct vchiq_service_params*,int *) ;

int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 struct service_creation *setup,
 VCHI_SERVICE_HANDLE_T *handle)
{
 VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 struct shim_service *service = service_alloc(instance, setup);

 *handle = (VCHI_SERVICE_HANDLE_T)service;

 if (service) {
  struct vchiq_service_params params;
  VCHIQ_STATUS_T status;

  memset(&params, 0, sizeof(params));
  params.fourcc = setup->service_id;
  params.callback = shim_callback;
  params.userdata = service;
  params.version = setup->version.version;
  params.version_min = setup->version.version_min;

  status = vchiq_open_service(instance, &params,
   &service->handle);
  if (status != VCHIQ_SUCCESS) {
   service_free(service);
   service = ((void*)0);
   *handle = ((void*)0);
  }
 }

 return (service != ((void*)0)) ? 0 : -1;
}
