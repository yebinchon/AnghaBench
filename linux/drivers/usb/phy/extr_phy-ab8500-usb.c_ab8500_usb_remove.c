
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ab8500_usb {scalar_t__ mode; int phy; int phy_dis_work; } ;


 scalar_t__ USB_HOST ;
 scalar_t__ USB_PERIPHERAL ;
 int ab8500_usb_host_phy_dis (struct ab8500_usb*) ;
 int ab8500_usb_peri_phy_dis (struct ab8500_usb*) ;
 int cancel_work_sync (int *) ;
 struct ab8500_usb* platform_get_drvdata (struct platform_device*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int ab8500_usb_remove(struct platform_device *pdev)
{
 struct ab8500_usb *ab = platform_get_drvdata(pdev);

 cancel_work_sync(&ab->phy_dis_work);

 usb_remove_phy(&ab->phy);

 if (ab->mode == USB_HOST)
  ab8500_usb_host_phy_dis(ab);
 else if (ab->mode == USB_PERIPHERAL)
  ab8500_usb_peri_phy_dis(ab);

 return 0;
}
