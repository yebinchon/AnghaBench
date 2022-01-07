
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct device {int dummy; } ;


 int watchdog_unregister_device (struct watchdog_device*) ;

__attribute__((used)) static void devm_watchdog_unregister_device(struct device *dev, void *res)
{
 watchdog_unregister_device(*(struct watchdog_device **)res);
}
