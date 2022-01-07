
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int dummy; } ;


 int ASUS_WMI_DEVID_KBD_BACKLIGHT ;
 int asus_wmi_get_devstate_bits (struct asus_wmi*,int ,int) ;

__attribute__((used)) static int kbd_led_read(struct asus_wmi *asus, int *level, int *env)
{
 int retval;







 retval = asus_wmi_get_devstate_bits(asus, ASUS_WMI_DEVID_KBD_BACKLIGHT,
         0xFFFF);


 if (retval == 0x8000)
  retval = 0;

 if (retval < 0)
  return retval;

 if (level)
  *level = retval & 0x7F;
 if (env)
  *env = (retval >> 8) & 0x7F;
 return 0;
}
