
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int controller; } ;
struct usb_hcd {int rsrc_len; int rsrc_start; TYPE_1__ self; int regs; } ;
struct TYPE_4__ {int start; } ;
struct sa1111_dev {int mapbase; int dev; TYPE_2__ res; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int dev_dbg (int *,char*) ;
 int device_wakeup_enable (int ) ;
 int hcd_name ;
 int ohci_sa1111_hc_driver ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (TYPE_2__*) ;
 int sa1111_get_irq (struct sa1111_dev*,int) ;
 int sa1111_start_hc (struct sa1111_dev*) ;
 int sa1111_stop_hc (struct sa1111_dev*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (int *,int *,char*) ;
 scalar_t__ usb_disabled () ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_sa1111_probe(struct sa1111_dev *dev)
{
 struct usb_hcd *hcd;
 int ret, irq;

 if (usb_disabled())
  return -ENODEV;







 hcd = usb_create_hcd(&ohci_sa1111_hc_driver, &dev->dev, "sa1111");
 if (!hcd)
  return -ENOMEM;

 hcd->rsrc_start = dev->res.start;
 hcd->rsrc_len = resource_size(&dev->res);

 irq = sa1111_get_irq(dev, 1);
 if (irq <= 0) {
  ret = irq ? : -ENXIO;
  goto err1;
 }

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
  dev_dbg(&dev->dev, "request_mem_region failed\n");
  ret = -EBUSY;
  goto err1;
 }

 hcd->regs = dev->mapbase;

 ret = sa1111_start_hc(dev);
 if (ret)
  goto err2;

 ret = usb_add_hcd(hcd, irq, 0);
 if (ret == 0) {
  device_wakeup_enable(hcd->self.controller);
  return ret;
 }

 sa1111_stop_hc(dev);
 err2:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 err1:
 usb_put_hcd(hcd);
 return ret;
}
