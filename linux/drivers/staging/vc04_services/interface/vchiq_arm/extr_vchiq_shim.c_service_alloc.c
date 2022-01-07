
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shim_service {int callback_param; int callback; int queue; } ;
struct service_creation {int callback_param; int callback; } ;
typedef int VCHIQ_INSTANCE_T ;


 int GFP_KERNEL ;
 int kfree (struct shim_service*) ;
 struct shim_service* kzalloc (int,int ) ;
 scalar_t__ vchiu_queue_init (int *,int) ;

__attribute__((used)) static struct shim_service *service_alloc(VCHIQ_INSTANCE_T instance,
 struct service_creation *setup)
{
 struct shim_service *service = kzalloc(sizeof(struct shim_service), GFP_KERNEL);

 (void)instance;

 if (service) {
  if (vchiu_queue_init(&service->queue, 64)) {
   service->callback = setup->callback;
   service->callback_param = setup->callback_param;
  } else {
   kfree(service);
   service = ((void*)0);
  }
 }

 return service;
}
