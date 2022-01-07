
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {int rsrc_len; int rsrc_start; int regs; TYPE_1__ self; } ;
struct resource {int start; } ;
struct platform_device {int name; int dev; } ;
struct hc_driver {int dummy; } ;
struct ehci_hcd {int big_endian_mmio; int big_endian_desc; } ;


 int EBUSY ;
 int ENOMEM ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int dev_err (int *,char*,int ) ;
 int device_wakeup_enable (int ) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int ioremap_nocache (int ,int ) ;
 int iounmap (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pr_debug (char*,...) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int to_mspusb_device (struct platform_device*) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,int *,char*) ;
 int usb_hcd_msp_map_regs (int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

int usb_hcd_msp_probe(const struct hc_driver *driver,
     struct platform_device *dev)
{
 int retval;
 struct usb_hcd *hcd;
 struct resource *res;
 struct ehci_hcd *ehci ;

 hcd = usb_create_hcd(driver, &dev->dev, "pmcmsp");
 if (!hcd)
  return -ENOMEM;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  pr_debug("No IOMEM resource info for %s.\n", dev->name);
  retval = -ENOMEM;
  goto err1;
 }
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);
 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, dev->name)) {
  retval = -EBUSY;
  goto err1;
 }
 hcd->regs = ioremap_nocache(hcd->rsrc_start, hcd->rsrc_len);
 if (!hcd->regs) {
  pr_debug("ioremap failed");
  retval = -ENOMEM;
  goto err2;
 }

 res = platform_get_resource(dev, IORESOURCE_IRQ, 0);
 if (res == ((void*)0)) {
  dev_err(&dev->dev, "No IRQ resource info for %s.\n", dev->name);
  retval = -ENOMEM;
  goto err3;
 }


 retval = usb_hcd_msp_map_regs(to_mspusb_device(dev));
 if (retval != 0)
  goto err3;

 ehci = hcd_to_ehci(hcd);
 ehci->big_endian_mmio = 1;
 ehci->big_endian_desc = 1;


 retval = usb_add_hcd(hcd, res->start, IRQF_SHARED);
 if (retval == 0) {
  device_wakeup_enable(hcd->self.controller);
  return 0;
 }

 usb_remove_hcd(hcd);
err3:
 iounmap(hcd->regs);
err2:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
err1:
 usb_put_hcd(hcd);

 return retval;
}
