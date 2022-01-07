
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vchiq_service {scalar_t__ service_use_count; } ;
typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_4__ {int state; } ;


 struct vchiq_service* next_service_by_instance (int ,TYPE_1__*,int*) ;
 int unlock_service (struct vchiq_service*) ;

int
vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
{
 struct vchiq_service *service;
 int use_count = 0, i;

 i = 0;
 while ((service = next_service_by_instance(instance->state,
  instance, &i)) != ((void*)0)) {
  use_count += service->service_use_count;
  unlock_service(service);
 }
 return use_count;
}
