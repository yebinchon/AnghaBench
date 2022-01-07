
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;
struct apple_gmux_data {int dummy; } ;


 int GMUX_BRIGHTNESS_MASK ;
 int GMUX_PORT_BRIGHTNESS ;
 struct apple_gmux_data* bl_get_data (struct backlight_device*) ;
 int gmux_read32 (struct apple_gmux_data*,int ) ;

__attribute__((used)) static int gmux_get_brightness(struct backlight_device *bd)
{
 struct apple_gmux_data *gmux_data = bl_get_data(bd);
 return gmux_read32(gmux_data, GMUX_PORT_BRIGHTNESS) &
        GMUX_BRIGHTNESS_MASK;
}
