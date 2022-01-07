
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {int rsrc_len; scalar_t__ rsrc_start; int * regs; TYPE_2__ self; } ;
struct resource {scalar_t__ start; TYPE_1__* parent; } ;
struct device {int parent; } ;
struct platform_device {int name; struct device dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_3__ {scalar_t__ start; } ;


 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int SM501_GATE_USB_HOST ;
 int SM501_IRQ_MASK ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int device_wakeup_enable (int ) ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int * ioremap (scalar_t__,int ) ;
 int iounmap (int *) ;
 int ohci_hcd_init (int ) ;
 struct hc_driver ohci_sm501_hc_driver ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int release_mem_region (scalar_t__,int ) ;
 int request_mem_region (scalar_t__,int ,int ) ;
 int resource_size (struct resource*) ;
 int sm501_modify_reg (int ,int ,int,int ) ;
 int sm501_unit_power (int ,int ,int) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,struct device*,int ) ;
 scalar_t__ usb_hcd_setup_local_mem (struct usb_hcd*,scalar_t__,scalar_t__,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_sm501_drv_probe(struct platform_device *pdev)
{
 const struct hc_driver *driver = &ohci_sm501_hc_driver;
 struct device *dev = &pdev->dev;
 struct resource *res, *mem;
 int retval, irq;
 struct usb_hcd *hcd = ((void*)0);

 irq = retval = platform_get_irq(pdev, 0);
 if (retval < 0)
  goto err0;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (mem == ((void*)0)) {
  dev_err(dev, "no resource definition for memory\n");
  retval = -ENOENT;
  goto err0;
 }

 if (!request_mem_region(mem->start, resource_size(mem), pdev->name)) {
  dev_err(dev, "request_mem_region failed\n");
  retval = -EBUSY;
  goto err0;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(dev, "no resource definition for registers\n");
  retval = -ENOENT;
  goto err1;
 }

 hcd = usb_create_hcd(driver, &pdev->dev, dev_name(&pdev->dev));
 if (!hcd) {
  retval = -ENOMEM;
  goto err1;
 }

 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, pdev->name)) {
  dev_err(dev, "request_mem_region failed\n");
  retval = -EBUSY;
  goto err3;
 }

 hcd->regs = ioremap(hcd->rsrc_start, hcd->rsrc_len);
 if (hcd->regs == ((void*)0)) {
  dev_err(dev, "cannot remap registers\n");
  retval = -ENXIO;
  goto err4;
 }

 ohci_hcd_init(hcd_to_ohci(hcd));
 if (usb_hcd_setup_local_mem(hcd, mem->start,
        mem->start - mem->parent->start,
        resource_size(mem)) < 0)
  goto err5;
 retval = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (retval)
  goto err5;
 device_wakeup_enable(hcd->self.controller);



 sm501_unit_power(dev->parent, SM501_GATE_USB_HOST, 1);
 sm501_modify_reg(dev->parent, SM501_IRQ_MASK, 1 << 6, 0);

 return 0;
err5:
 iounmap(hcd->regs);
err4:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
err3:
 usb_put_hcd(hcd);
err1:
 release_mem_region(mem->start, resource_size(mem));
err0:
 return retval;
}
