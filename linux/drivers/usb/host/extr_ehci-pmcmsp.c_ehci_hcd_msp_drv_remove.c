
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 int MSP_PIN_USB0_HOST_DEV ;
 int gpio_free (int ) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int usb_hcd_msp_remove (struct usb_hcd*,struct platform_device*) ;

__attribute__((used)) static int ehci_hcd_msp_drv_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);

 usb_hcd_msp_remove(hcd, pdev);


 gpio_free(MSP_PIN_USB0_HOST_DEV);

 return 0;
}
