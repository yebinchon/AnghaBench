
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {struct gb_hid* driver_data; } ;
struct gb_hid {int dummy; } ;
typedef int __u8 ;


 int EINVAL ;
 unsigned char HID_INPUT_REPORT ;
 int gb_hid_set_report (struct gb_hid*,unsigned char,int,int*,size_t) ;

__attribute__((used)) static int __gb_hid_output_raw_report(struct hid_device *hid, __u8 *buf,
          size_t len, unsigned char report_type)
{
 struct gb_hid *ghid = hid->driver_data;
 int report_id = buf[0];
 int ret;

 if (report_type == HID_INPUT_REPORT)
  return -EINVAL;

 if (report_id) {
  buf++;
  len--;
 }

 ret = gb_hid_set_report(ghid, report_type, report_id, buf, len);
 if (report_id && ret >= 0)
  ret++;

 return 0;
}
