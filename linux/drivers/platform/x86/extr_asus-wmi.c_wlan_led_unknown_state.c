
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int dummy; } ;


 int ASUS_WMI_DEVID_WIRELESS_LED ;
 int ASUS_WMI_DSTS_UNKNOWN_BIT ;
 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;

__attribute__((used)) static int wlan_led_unknown_state(struct asus_wmi *asus)
{
 u32 result;

 asus_wmi_get_devstate(asus, ASUS_WMI_DEVID_WIRELESS_LED, &result);

 return result & ASUS_WMI_DSTS_UNKNOWN_BIT;
}
