
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shim_service {int queue; } ;


 int kfree (struct shim_service*) ;
 int vchiu_queue_delete (int *) ;

__attribute__((used)) static void service_free(struct shim_service *service)
{
 if (service) {
  vchiu_queue_delete(&service->queue);
  kfree(service);
 }
}
