
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int ep0_req; int gadget; int role_sw; int dentry; } ;
struct platform_device {int dev; } ;


 int __renesas_usb3_ep_free_request (int ) ;
 int debugfs_remove_recursive (int ) ;
 int dev_attr_role ;
 int device_remove_file (int *,int *) ;
 struct renesas_usb3* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int renesas_usb3_dma_free_prd (struct renesas_usb3*,int *) ;
 int usb_del_gadget_udc (int *) ;
 int usb_role_switch_unregister (int ) ;

__attribute__((used)) static int renesas_usb3_remove(struct platform_device *pdev)
{
 struct renesas_usb3 *usb3 = platform_get_drvdata(pdev);

 debugfs_remove_recursive(usb3->dentry);
 device_remove_file(&pdev->dev, &dev_attr_role);

 usb_role_switch_unregister(usb3->role_sw);

 usb_del_gadget_udc(&usb3->gadget);
 renesas_usb3_dma_free_prd(usb3, &pdev->dev);

 __renesas_usb3_ep_free_request(usb3->ep0_req);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
