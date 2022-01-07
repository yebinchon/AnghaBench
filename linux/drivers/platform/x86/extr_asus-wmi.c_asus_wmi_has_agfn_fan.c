
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int sfun; } ;


 int ASUS_WMI_DEVID_FAN_CTRL ;
 int ASUS_WMI_DSTS_PRESENCE_BIT ;
 int ASUS_WMI_UNSUPPORTED_METHOD ;
 int asus_agfn_fan_speed_read (struct asus_wmi*,int,int*) ;
 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;

__attribute__((used)) static bool asus_wmi_has_agfn_fan(struct asus_wmi *asus)
{
 int status;
 int speed;
 u32 value;

 status = asus_agfn_fan_speed_read(asus, 1, &speed);
 if (status != 0)
  return 0;

 status = asus_wmi_get_devstate(asus, ASUS_WMI_DEVID_FAN_CTRL, &value);
 if (status != 0)
  return 0;
 return !(value == ASUS_WMI_UNSUPPORTED_METHOD || value & 0xFFF80000
   || (!asus->sfun && !(value & ASUS_WMI_DSTS_PRESENCE_BIT)));
}
