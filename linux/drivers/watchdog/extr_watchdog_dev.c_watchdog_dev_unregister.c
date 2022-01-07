
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {TYPE_2__* wd_data; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ cdev; } ;


 int device_destroy (int *,int ) ;
 int watchdog_cdev_unregister (struct watchdog_device*) ;
 int watchdog_class ;
 int watchdog_unregister_pretimeout (struct watchdog_device*) ;

void watchdog_dev_unregister(struct watchdog_device *wdd)
{
 watchdog_unregister_pretimeout(wdd);
 device_destroy(&watchdog_class, wdd->wd_data->cdev.dev);
 watchdog_cdev_unregister(wdd);
}
