
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int timer_active; int device; int timer; } ;


 int del_timer_sync (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void dev_stop_periodic_work(struct visor_device *dev)
{
 if (!dev->timer_active)
  return;

 del_timer_sync(&dev->timer);
 dev->timer_active = 0;
 put_device(&dev->device);
}
