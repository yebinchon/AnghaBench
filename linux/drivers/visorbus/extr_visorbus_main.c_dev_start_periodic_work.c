
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct visor_device {int timer_active; TYPE_1__ timer; int device; scalar_t__ being_removed; } ;


 int EINVAL ;
 scalar_t__ POLLJIFFIES_NORMALCHANNEL ;
 int add_timer (TYPE_1__*) ;
 int get_device (int *) ;
 scalar_t__ jiffies ;

__attribute__((used)) static int dev_start_periodic_work(struct visor_device *dev)
{
 if (dev->being_removed || dev->timer_active)
  return -EINVAL;


 get_device(&dev->device);
 dev->timer.expires = jiffies + POLLJIFFIES_NORMALCHANNEL;
 add_timer(&dev->timer);
 dev->timer_active = 1;
 return 0;
}
