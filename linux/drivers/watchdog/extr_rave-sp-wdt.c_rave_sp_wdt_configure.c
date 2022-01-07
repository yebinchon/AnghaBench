
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* variant; } ;
struct TYPE_3__ {int (* configure ) (struct watchdog_device*,int) ;} ;


 int stub1 (struct watchdog_device*,int) ;
 TYPE_2__* to_rave_sp_wdt (struct watchdog_device*) ;

__attribute__((used)) static int rave_sp_wdt_configure(struct watchdog_device *wdd, bool on)
{
 return to_rave_sp_wdt(wdd)->variant->configure(wdd, on);
}
