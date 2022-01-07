
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_device_unregister (struct platform_device*) ;

void usb_phy_generic_unregister(struct platform_device *pdev)
{
 platform_device_unregister(pdev);
}
