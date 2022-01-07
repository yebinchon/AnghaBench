
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int fan_boost_mode_available; int fan_boost_mode_mask; } ;


 int ASUS_FAN_BOOST_MODES_MASK ;
 int ASUS_WMI_DEVID_FAN_BOOST_MODE ;
 int ASUS_WMI_DSTS_PRESENCE_BIT ;
 int ENODEV ;
 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;

__attribute__((used)) static int fan_boost_mode_check_present(struct asus_wmi *asus)
{
 u32 result;
 int err;

 asus->fan_boost_mode_available = 0;

 err = asus_wmi_get_devstate(asus, ASUS_WMI_DEVID_FAN_BOOST_MODE,
        &result);
 if (err) {
  if (err == -ENODEV)
   return 0;
  else
   return err;
 }

 if ((result & ASUS_WMI_DSTS_PRESENCE_BIT) &&
   (result & ASUS_FAN_BOOST_MODES_MASK)) {
  asus->fan_boost_mode_available = 1;
  asus->fan_boost_mode_mask = result & ASUS_FAN_BOOST_MODES_MASK;
 }

 return 0;
}
