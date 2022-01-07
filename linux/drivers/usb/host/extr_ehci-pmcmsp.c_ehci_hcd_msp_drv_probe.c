
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 int MSP_PIN_USB0_HOST_DEV ;
 int ehci_msp_hc_driver ;
 int gpio_request (int ,char*) ;
 int pr_debug (char*) ;
 scalar_t__ usb_disabled () ;
 int usb_hcd_msp_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ehci_hcd_msp_drv_probe(struct platform_device *pdev)
{
 int ret;

 pr_debug("In ehci_hcd_msp_drv_probe");

 if (usb_disabled())
  return -ENODEV;

 gpio_request(MSP_PIN_USB0_HOST_DEV, "USB0_HOST_DEV_GPIO");

 ret = usb_hcd_msp_probe(&ehci_msp_hc_driver, pdev);

 return ret;
}
