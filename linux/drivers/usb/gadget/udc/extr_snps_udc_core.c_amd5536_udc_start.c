
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int * bus; } ;
struct usb_gadget_driver {TYPE_4__ driver; } ;
struct usb_gadget {int dummy; } ;
struct udc {TYPE_3__* regs; TYPE_2__* ep; struct usb_gadget_driver* driver; } ;
struct TYPE_7__ {int ctl; } ;
struct TYPE_5__ {int driver_data; } ;
struct TYPE_6__ {TYPE_1__ ep; } ;


 int AMD_CLEAR_BIT (int ) ;
 int UDC_DEVCTL_SD ;
 size_t UDC_EP0IN_IX ;
 size_t UDC_EP0OUT_IX ;
 int readl (int *) ;
 int setup_ep0 (struct udc*) ;
 struct udc* to_amd5536_udc (struct usb_gadget*) ;
 int usb_connect (struct udc*) ;
 int writel (int,int *) ;

__attribute__((used)) static int amd5536_udc_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct udc *dev = to_amd5536_udc(g);
 u32 tmp;

 driver->driver.bus = ((void*)0);
 dev->driver = driver;




 dev->ep[UDC_EP0OUT_IX].ep.driver_data =
  dev->ep[UDC_EP0IN_IX].ep.driver_data;


 setup_ep0(dev);


 tmp = readl(&dev->regs->ctl);
 tmp = tmp & AMD_CLEAR_BIT(UDC_DEVCTL_SD);
 writel(tmp, &dev->regs->ctl);

 usb_connect(dev);

 return 0;
}
