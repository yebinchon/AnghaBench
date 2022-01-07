
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shim_service {int handle; } ;
typedef int int32_t ;
typedef scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef int VCHIQ_STATUS_T ;


 int vchiq_get_peer_version (int ,short*) ;
 int vchiq_status_to_vchi (int ) ;

int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
{
 int32_t ret = -1;
 struct shim_service *service = (struct shim_service *)handle;

 if (service) {
  VCHIQ_STATUS_T status;

  status = vchiq_get_peer_version(service->handle, peer_version);
  ret = vchiq_status_to_vchi(status);
 }
 return ret;
}
