
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int num_ep; int * usba_ep; int gadget; } ;
struct platform_device {int dev; } ;


 int device_init_wakeup (int *,int ) ;
 struct usba_udc* platform_get_drvdata (struct platform_device*) ;
 int usb_del_gadget_udc (int *) ;
 int usba_cleanup_debugfs (struct usba_udc*) ;
 int usba_ep_cleanup_debugfs (int *) ;

__attribute__((used)) static int usba_udc_remove(struct platform_device *pdev)
{
 struct usba_udc *udc;
 int i;

 udc = platform_get_drvdata(pdev);

 device_init_wakeup(&pdev->dev, 0);
 usb_del_gadget_udc(&udc->gadget);

 for (i = 1; i < udc->num_ep; i++)
  usba_ep_cleanup_debugfs(&udc->usba_ep[i]);
 usba_cleanup_debugfs(udc);

 return 0;
}
