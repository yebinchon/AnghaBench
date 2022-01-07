
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int gadget; } ;


 int DBG (char*) ;
 int msleep (int) ;
 int omap_pullup (int *,int) ;
 int omap_wakeup (int *) ;
 TYPE_1__* udc ;

__attribute__((used)) static int omap_udc_resume(struct platform_device *dev)
{
 DBG("resume + wakeup/SRP\n");
 omap_pullup(&udc->gadget, 1);


 msleep(100);
 return omap_wakeup(&udc->gadget);
}
