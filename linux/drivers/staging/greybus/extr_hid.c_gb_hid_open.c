
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {struct gb_hid* driver_data; } ;
struct gb_hid {int flags; } ;


 int GB_HID_STARTED ;
 int GB_HID_TYPE_PWR_ON ;
 int gb_hid_set_power (struct gb_hid*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int gb_hid_open(struct hid_device *hid)
{
 struct gb_hid *ghid = hid->driver_data;
 int ret;

 ret = gb_hid_set_power(ghid, GB_HID_TYPE_PWR_ON);
 if (ret < 0)
  return ret;

 set_bit(GB_HID_STARTED, &ghid->flags);
 return 0;
}
