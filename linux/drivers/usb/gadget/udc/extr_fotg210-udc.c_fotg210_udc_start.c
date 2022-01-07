
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * bus; } ;
struct usb_gadget_driver {TYPE_1__ driver; } ;
struct usb_gadget {int dummy; } ;
struct fotg210_udc {scalar_t__ reg; struct usb_gadget_driver* driver; } ;


 int DMCR_GLINT_EN ;
 scalar_t__ FOTG210_DMCR ;
 struct fotg210_udc* gadget_to_fotg210 (struct usb_gadget*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static int fotg210_udc_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct fotg210_udc *fotg210 = gadget_to_fotg210(g);
 u32 value;


 driver->driver.bus = ((void*)0);
 fotg210->driver = driver;


 value = ioread32(fotg210->reg + FOTG210_DMCR);
 value |= DMCR_GLINT_EN;
 iowrite32(value, fotg210->reg + FOTG210_DMCR);

 return 0;
}
