
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int dummy; } ;
struct vchiq_service {int handle; } ;
typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_INSTANCE_T ;


 int VCHIQ_SUCCESS ;
 struct vchiq_service* next_service_by_instance (struct vchiq_state*,int ,int*) ;
 int unlock_service (struct vchiq_service*) ;
 int vchiq_remove_service (int ) ;

VCHIQ_STATUS_T
vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
{
 struct vchiq_service *service;
 int i;


 i = 0;
 while ((service = next_service_by_instance(state, instance,
  &i)) != ((void*)0)) {
  (void)vchiq_remove_service(service->handle);
  unlock_service(service);
 }

 return VCHIQ_SUCCESS;
}
