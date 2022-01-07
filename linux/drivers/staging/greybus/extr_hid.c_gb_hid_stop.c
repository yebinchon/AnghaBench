
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {struct gb_hid* driver_data; } ;
struct gb_hid {int dummy; } ;


 int gb_hid_free_buffers (struct gb_hid*) ;

__attribute__((used)) static void gb_hid_stop(struct hid_device *hid)
{
 struct gb_hid *ghid = hid->driver_data;

 gb_hid_free_buffers(ghid);
}
