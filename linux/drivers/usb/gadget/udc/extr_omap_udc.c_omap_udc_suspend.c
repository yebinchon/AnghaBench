
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int gadget; } ;


 int UDC_ATT ;
 int UDC_DEVSTAT ;
 int UDC_SUS ;
 int WARNING (char*) ;
 int omap_pullup (int *,int ) ;
 int omap_readw (int ) ;
 TYPE_1__* udc ;

__attribute__((used)) static int omap_udc_suspend(struct platform_device *dev, pm_message_t message)
{
 u32 devstat;

 devstat = omap_readw(UDC_DEVSTAT);





 if ((devstat & UDC_ATT) != 0 && (devstat & UDC_SUS) == 0) {
  WARNING("session active; suspend requires disconnect\n");
  omap_pullup(&udc->gadget, 0);
 }

 return 0;
}
