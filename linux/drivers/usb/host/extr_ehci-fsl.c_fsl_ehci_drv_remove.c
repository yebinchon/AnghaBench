
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* usb_phy; } ;
struct platform_device {int dev; } ;
struct fsl_usb2_platform_data {int (* exit ) (struct platform_device*) ;} ;
struct TYPE_3__ {int otg; } ;


 int IS_ERR_OR_NULL (TYPE_1__*) ;
 struct fsl_usb2_platform_data* dev_get_platdata (int *) ;
 int otg_set_host (int ,int *) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_put_phy (TYPE_1__*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int fsl_ehci_drv_remove(struct platform_device *pdev)
{
 struct fsl_usb2_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct usb_hcd *hcd = platform_get_drvdata(pdev);

 if (!IS_ERR_OR_NULL(hcd->usb_phy)) {
  otg_set_host(hcd->usb_phy->otg, ((void*)0));
  usb_put_phy(hcd->usb_phy);
 }

 usb_remove_hcd(hcd);





 if (pdata->exit)
  pdata->exit(pdev);
 usb_put_hcd(hcd);

 return 0;
}
