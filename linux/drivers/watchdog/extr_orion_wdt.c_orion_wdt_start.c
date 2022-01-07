
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct orion_watchdog {TYPE_1__* data; } ;
struct TYPE_2__ {int (* start ) (struct watchdog_device*) ;} ;


 int stub1 (struct watchdog_device*) ;
 struct orion_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int orion_wdt_start(struct watchdog_device *wdt_dev)
{
 struct orion_watchdog *dev = watchdog_get_drvdata(wdt_dev);


 return dev->data->start(wdt_dev);
}
