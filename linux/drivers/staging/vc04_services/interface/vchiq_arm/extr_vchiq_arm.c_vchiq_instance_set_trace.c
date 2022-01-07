
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vchiq_service {int trace; } ;
typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_4__ {int trace; int state; } ;


 struct vchiq_service* next_service_by_instance (int ,TYPE_1__*,int*) ;
 int unlock_service (struct vchiq_service*) ;

void
vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
{
 struct vchiq_service *service;
 int i;

 i = 0;
 while ((service = next_service_by_instance(instance->state,
  instance, &i)) != ((void*)0)) {
  service->trace = trace;
  unlock_service(service);
 }
 instance->trace = (trace != 0);
}
