
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visor_driver {int (* channel_interrupt ) (struct visor_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct visor_device {int timer; TYPE_1__ device; } ;
struct timer_list {int dummy; } ;


 scalar_t__ POLLJIFFIES_NORMALCHANNEL ;
 struct visor_device* dev ;
 struct visor_device* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int stub1 (struct visor_device*) ;
 int timer ;
 struct visor_driver* to_visor_driver (int ) ;

__attribute__((used)) static void dev_periodic_work(struct timer_list *t)
{
 struct visor_device *dev = from_timer(dev, t, timer);
 struct visor_driver *drv = to_visor_driver(dev->device.driver);

 drv->channel_interrupt(dev);
 mod_timer(&dev->timer, jiffies + POLLJIFFIES_NORMALCHANNEL);
}
