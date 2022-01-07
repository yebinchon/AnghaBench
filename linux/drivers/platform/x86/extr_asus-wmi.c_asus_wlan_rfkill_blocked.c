
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int dummy; } ;


 int ASUS_WMI_DEVID_WLAN ;
 int asus_wmi_get_devstate_simple (struct asus_wmi*,int ) ;

__attribute__((used)) static bool asus_wlan_rfkill_blocked(struct asus_wmi *asus)
{
 int result = asus_wmi_get_devstate_simple(asus, ASUS_WMI_DEVID_WLAN);

 if (result < 0)
  return 0;
 return !result;
}
