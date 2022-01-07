
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct backlight_device {int dummy; } ;
struct asus_wmi {int dummy; } ;


 int ASUS_WMI_DEVID_BRIGHTNESS ;
 int ASUS_WMI_DSTS_BRIGHTNESS_MASK ;
 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;
 struct asus_wmi* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int read_brightness(struct backlight_device *bd)
{
 struct asus_wmi *asus = bl_get_data(bd);
 u32 retval;
 int err;

 err = asus_wmi_get_devstate(asus, ASUS_WMI_DEVID_BRIGHTNESS, &retval);
 if (err < 0)
  return err;

 return retval & ASUS_WMI_DSTS_BRIGHTNESS_MASK;
}
