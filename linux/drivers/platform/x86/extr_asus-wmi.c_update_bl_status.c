
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int power; int brightness; } ;
struct backlight_device {TYPE_3__ props; } ;
struct asus_wmi {TYPE_2__* driver; } ;
struct TYPE_5__ {int panel_power; TYPE_1__* quirks; } ;
struct TYPE_4__ {scalar_t__ scalar_panel_brightness; scalar_t__ store_backlight_power; } ;


 int ASUS_WMI_DEVID_BACKLIGHT ;
 int ASUS_WMI_DEVID_BRIGHTNESS ;
 int ENODEV ;
 int FB_BLANK_UNBLANK ;
 int asus_wmi_set_devstate (int ,int,int *) ;
 struct asus_wmi* bl_get_data (struct backlight_device*) ;
 int get_scalar_command (struct backlight_device*) ;
 int read_backlight_power (struct asus_wmi*) ;

__attribute__((used)) static int update_bl_status(struct backlight_device *bd)
{
 struct asus_wmi *asus = bl_get_data(bd);
 u32 ctrl_param;
 int power, err = 0;

 power = read_backlight_power(asus);
 if (power != -ENODEV && bd->props.power != power) {
  ctrl_param = !!(bd->props.power == FB_BLANK_UNBLANK);
  err = asus_wmi_set_devstate(ASUS_WMI_DEVID_BACKLIGHT,
         ctrl_param, ((void*)0));
  if (asus->driver->quirks->store_backlight_power)
   asus->driver->panel_power = bd->props.power;



  if (asus->driver->quirks->scalar_panel_brightness)
   return err;
 }

 if (asus->driver->quirks->scalar_panel_brightness)
  ctrl_param = get_scalar_command(bd);
 else
  ctrl_param = bd->props.brightness;

 err = asus_wmi_set_devstate(ASUS_WMI_DEVID_BRIGHTNESS,
        ctrl_param, ((void*)0));

 return err;
}
