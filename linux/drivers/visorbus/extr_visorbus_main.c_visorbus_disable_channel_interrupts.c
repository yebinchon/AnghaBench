
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int dummy; } ;


 int dev_stop_periodic_work (struct visor_device*) ;

void visorbus_disable_channel_interrupts(struct visor_device *dev)
{
 dev_stop_periodic_work(dev);
}
