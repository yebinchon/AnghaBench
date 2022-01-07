
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 TYPE_1__ wdt ;
 int xen_wdt_dev ;
 int xen_wdt_start (int *) ;

__attribute__((used)) static int xen_wdt_resume(struct platform_device *dev)
{
 if (!wdt.id)
  return 0;
 wdt.id = 0;
 return xen_wdt_start(&xen_wdt_dev);
}
