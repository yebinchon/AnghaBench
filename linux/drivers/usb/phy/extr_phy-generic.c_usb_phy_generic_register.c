
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int PLATFORM_DEVID_AUTO ;
 struct platform_device* platform_device_register_simple (char*,int ,int *,int ) ;

struct platform_device *usb_phy_generic_register(void)
{
 return platform_device_register_simple("usb_phy_generic",
   PLATFORM_DEVID_AUTO, ((void*)0), 0);
}
