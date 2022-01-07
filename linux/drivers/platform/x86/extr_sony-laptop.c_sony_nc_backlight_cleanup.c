
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int backlight_device_unregister (int ) ;
 TYPE_1__ sony_bl_props ;

__attribute__((used)) static void sony_nc_backlight_cleanup(void)
{
 backlight_device_unregister(sony_bl_props.dev);
}
