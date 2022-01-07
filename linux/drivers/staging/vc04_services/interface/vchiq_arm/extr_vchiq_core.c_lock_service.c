
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_service {scalar_t__ ref_count; } ;


 int WARN_ON (int) ;
 int service_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
lock_service(struct vchiq_service *service)
{
 spin_lock(&service_spinlock);
 WARN_ON(!service);
 if (service) {
  WARN_ON(service->ref_count == 0);
  service->ref_count++;
 }
 spin_unlock(&service_spinlock);
}
