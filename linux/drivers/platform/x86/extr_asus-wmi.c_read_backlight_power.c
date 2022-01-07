
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct asus_wmi {TYPE_2__* driver; } ;
struct TYPE_4__ {int panel_power; TYPE_1__* quirks; } ;
struct TYPE_3__ {scalar_t__ store_backlight_power; } ;


 int ASUS_WMI_DEVID_BACKLIGHT ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int asus_wmi_get_devstate_simple (struct asus_wmi*,int ) ;

__attribute__((used)) static int read_backlight_power(struct asus_wmi *asus)
{
 int ret;

 if (asus->driver->quirks->store_backlight_power)
  ret = !asus->driver->panel_power;
 else
  ret = asus_wmi_get_devstate_simple(asus,
         ASUS_WMI_DEVID_BACKLIGHT);

 if (ret < 0)
  return ret;

 return ret ? FB_BLANK_UNBLANK : FB_BLANK_POWERDOWN;
}
