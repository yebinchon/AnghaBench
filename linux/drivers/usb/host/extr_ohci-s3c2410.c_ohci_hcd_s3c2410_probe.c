
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; int regs; int rsrc_len; int rsrc_start; } ;
struct s3c2410_hcd_info {int dummy; } ;
struct platform_device {TYPE_2__* resource; int dev; } ;
struct TYPE_5__ {int start; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk ;
 int dev_err (int *,char*) ;
 struct s3c2410_hcd_info* dev_get_platdata (int *) ;
 int device_wakeup_enable (int ) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,TYPE_2__*) ;
 int ohci_s3c2410_hc_driver ;
 int resource_size (TYPE_2__*) ;
 int s3c2410_start_hc (struct platform_device*,struct usb_hcd*) ;
 int s3c2410_stop_hc (struct platform_device*) ;
 int s3c2410_usb_set_power (struct s3c2410_hcd_info*,int,int) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 int usb_clk ;
 struct usb_hcd* usb_create_hcd (int *,int *,char*) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_s3c2410_probe(struct platform_device *dev)
{
 struct usb_hcd *hcd = ((void*)0);
 struct s3c2410_hcd_info *info = dev_get_platdata(&dev->dev);
 int retval;

 s3c2410_usb_set_power(info, 1, 1);
 s3c2410_usb_set_power(info, 2, 1);

 hcd = usb_create_hcd(&ohci_s3c2410_hc_driver, &dev->dev, "s3c24xx");
 if (hcd == ((void*)0))
  return -ENOMEM;

 hcd->rsrc_start = dev->resource[0].start;
 hcd->rsrc_len = resource_size(&dev->resource[0]);

 hcd->regs = devm_ioremap_resource(&dev->dev, &dev->resource[0]);
 if (IS_ERR(hcd->regs)) {
  retval = PTR_ERR(hcd->regs);
  goto err_put;
 }

 clk = devm_clk_get(&dev->dev, "usb-host");
 if (IS_ERR(clk)) {
  dev_err(&dev->dev, "cannot get usb-host clock\n");
  retval = PTR_ERR(clk);
  goto err_put;
 }

 usb_clk = devm_clk_get(&dev->dev, "usb-bus-host");
 if (IS_ERR(usb_clk)) {
  dev_err(&dev->dev, "cannot get usb-bus-host clock\n");
  retval = PTR_ERR(usb_clk);
  goto err_put;
 }

 s3c2410_start_hc(dev, hcd);

 retval = usb_add_hcd(hcd, dev->resource[1].start, 0);
 if (retval != 0)
  goto err_ioremap;

 device_wakeup_enable(hcd->self.controller);
 return 0;

 err_ioremap:
 s3c2410_stop_hc(dev);

 err_put:
 usb_put_hcd(hcd);
 return retval;
}
