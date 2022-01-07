
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {struct gb_hid* driver_data; } ;
struct gb_hid {int dummy; } ;


 int GB_HID_TYPE_PWR_OFF ;
 int GB_HID_TYPE_PWR_ON ;


 int gb_hid_set_power (struct gb_hid*,int ) ;

__attribute__((used)) static int gb_hid_power(struct hid_device *hid, int lvl)
{
 struct gb_hid *ghid = hid->driver_data;

 switch (lvl) {
 case 129:
  return gb_hid_set_power(ghid, GB_HID_TYPE_PWR_ON);
 case 128:
  return gb_hid_set_power(ghid, GB_HID_TYPE_PWR_OFF);
 }

 return 0;
}
