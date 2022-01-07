
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udc {int nb; int edev; int udc_phy; scalar_t__ drd_wq; int driver; int gadget; } ;
struct platform_device {int dev; } ;


 int EXTCON_USB ;
 scalar_t__ WARN_ON (int ) ;
 int destroy_workqueue (scalar_t__) ;
 int dev_info (int *,char*) ;
 int extcon_unregister_notifier (int ,int ,int *) ;
 int flush_workqueue (scalar_t__) ;
 int free_dma_pools (struct udc*) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 struct udc* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int udc_remove (struct udc*) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int udc_plat_remove(struct platform_device *pdev)
{
 struct udc *dev;

 dev = platform_get_drvdata(pdev);

 usb_del_gadget_udc(&dev->gadget);

 if (WARN_ON(dev->driver))
  return 0;


 free_dma_pools(dev);

 udc_remove(dev);

 platform_set_drvdata(pdev, ((void*)0));

 if (dev->drd_wq) {
  flush_workqueue(dev->drd_wq);
  destroy_workqueue(dev->drd_wq);
 }

 phy_power_off(dev->udc_phy);
 phy_exit(dev->udc_phy);
 extcon_unregister_notifier(dev->edev, EXTCON_USB, &dev->nb);

 dev_info(&pdev->dev, "Synopsys UDC platform driver removed\n");

 return 0;
}
