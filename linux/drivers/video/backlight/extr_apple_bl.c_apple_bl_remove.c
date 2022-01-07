
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_2__ {int iolen; int iostart; } ;


 int apple_backlight_device ;
 int backlight_device_unregister (int ) ;
 TYPE_1__* hw_data ;
 int release_region (int ,int ) ;

__attribute__((used)) static int apple_bl_remove(struct acpi_device *dev)
{
 backlight_device_unregister(apple_backlight_device);

 release_region(hw_data->iostart, hw_data->iolen);
 hw_data = ((void*)0);
 return 0;
}
