
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int state; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct apple_gmux_data {int dummy; } ;


 int BL_CORE_SUSPENDED ;
 int GMUX_PORT_BRIGHTNESS ;
 struct apple_gmux_data* bl_get_data (struct backlight_device*) ;
 int gmux_write32 (struct apple_gmux_data*,int ,int ) ;

__attribute__((used)) static int gmux_update_status(struct backlight_device *bd)
{
 struct apple_gmux_data *gmux_data = bl_get_data(bd);
 u32 brightness = bd->props.brightness;

 if (bd->props.state & BL_CORE_SUSPENDED)
  return 0;

 gmux_write32(gmux_data, GMUX_PORT_BRIGHTNESS, brightness);

 return 0;
}
