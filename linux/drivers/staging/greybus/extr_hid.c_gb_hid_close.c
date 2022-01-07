
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hid_device {struct gb_hid* driver_data; } ;
struct gb_hid {TYPE_2__* connection; int flags; } ;
struct TYPE_4__ {TYPE_1__* bundle; } ;
struct TYPE_3__ {int dev; } ;


 int GB_HID_STARTED ;
 int GB_HID_TYPE_PWR_OFF ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 int gb_hid_set_power (struct gb_hid*,int ) ;

__attribute__((used)) static void gb_hid_close(struct hid_device *hid)
{
 struct gb_hid *ghid = hid->driver_data;
 int ret;

 clear_bit(GB_HID_STARTED, &ghid->flags);


 ret = gb_hid_set_power(ghid, GB_HID_TYPE_PWR_OFF);
 if (ret)
  dev_err(&ghid->connection->bundle->dev,
   "failed to power off (%d)\n", ret);
}
