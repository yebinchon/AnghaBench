
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi_driver {int platform_driver; int platform_device; } ;


 int platform_device_unregister (int ) ;
 int platform_driver_unregister (int *) ;
 int used ;

void asus_wmi_unregister_driver(struct asus_wmi_driver *driver)
{
 platform_device_unregister(driver->platform_device);
 platform_driver_unregister(&driver->platform_driver);
 used = 0;
}
