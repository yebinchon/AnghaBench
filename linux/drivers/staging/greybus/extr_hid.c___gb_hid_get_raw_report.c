
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {struct gb_hid* driver_data; } ;
struct gb_hid {int dummy; } ;
typedef int __u8 ;


 int EINVAL ;
 unsigned char HID_OUTPUT_REPORT ;
 int gb_hid_get_report (struct gb_hid*,unsigned char,unsigned char,int *,size_t) ;

__attribute__((used)) static int __gb_hid_get_raw_report(struct hid_device *hid,
  unsigned char report_number, __u8 *buf, size_t count,
  unsigned char report_type)
{
 struct gb_hid *ghid = hid->driver_data;
 int ret;

 if (report_type == HID_OUTPUT_REPORT)
  return -EINVAL;

 ret = gb_hid_get_report(ghid, report_type, report_number, buf, count);
 if (!ret)
  ret = count;

 return ret;
}
