
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int kbd_led_wk; } ;


 int ASUS_WMI_DEVID_KBD_BACKLIGHT ;
 int asus_wmi_set_devstate (int ,int,int *) ;

__attribute__((used)) static void kbd_led_update(struct asus_wmi *asus)
{
 int ctrl_param = 0;





 if (asus->kbd_led_wk > 0)
  ctrl_param = 0x80 | (asus->kbd_led_wk & 0x7F);

 asus_wmi_set_devstate(ASUS_WMI_DEVID_KBD_BACKLIGHT, ctrl_param, ((void*)0));
}
