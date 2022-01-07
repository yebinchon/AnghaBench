
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int dummy; } ;


 int ASUS_WMI_DEVID_FNLOCK ;
 int ASUS_WMI_DSTS_PRESENCE_BIT ;
 int ASUS_WMI_FNLOCK_BIOS_DISABLED ;
 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;

__attribute__((used)) static bool asus_wmi_has_fnlock_key(struct asus_wmi *asus)
{
 u32 result;

 asus_wmi_get_devstate(asus, ASUS_WMI_DEVID_FNLOCK, &result);

 return (result & ASUS_WMI_DSTS_PRESENCE_BIT) &&
  !(result & ASUS_WMI_FNLOCK_BIOS_DISABLED);
}
