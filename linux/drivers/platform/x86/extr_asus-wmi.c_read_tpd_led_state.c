
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int dummy; } ;


 int ASUS_WMI_DEVID_TOUCHPAD_LED ;
 int asus_wmi_get_devstate_simple (struct asus_wmi*,int ) ;

__attribute__((used)) static int read_tpd_led_state(struct asus_wmi *asus)
{
 return asus_wmi_get_devstate_simple(asus, ASUS_WMI_DEVID_TOUCHPAD_LED);
}
