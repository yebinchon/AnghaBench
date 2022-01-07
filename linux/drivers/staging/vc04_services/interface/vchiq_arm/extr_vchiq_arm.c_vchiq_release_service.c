
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_service {int state; } ;
typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 int VCHIQ_ERROR ;
 struct vchiq_service* find_service_by_handle (int ) ;
 int unlock_service (struct vchiq_service*) ;
 int vchiq_release_internal (int ,struct vchiq_service*) ;

VCHIQ_STATUS_T
vchiq_release_service(VCHIQ_SERVICE_HANDLE_T handle)
{
 VCHIQ_STATUS_T ret = VCHIQ_ERROR;
 struct vchiq_service *service = find_service_by_handle(handle);

 if (service) {
  ret = vchiq_release_internal(service->state, service);
  unlock_service(service);
 }
 return ret;
}
