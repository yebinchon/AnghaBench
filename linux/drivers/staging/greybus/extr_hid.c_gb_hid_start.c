
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int quirks; struct gb_hid* driver_data; } ;
struct gb_hid {int dummy; } ;


 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 unsigned int HID_MAX_BUFFER_SIZE ;
 unsigned int HID_MIN_BUFFER_SIZE ;
 int HID_OUTPUT_REPORT ;
 int HID_QUIRK_NO_INIT_REPORTS ;
 int gb_hid_alloc_buffers (struct gb_hid*,unsigned int) ;
 int gb_hid_find_max_report (struct hid_device*,int ,unsigned int*) ;
 int gb_hid_init_reports (struct gb_hid*) ;

__attribute__((used)) static int gb_hid_start(struct hid_device *hid)
{
 struct gb_hid *ghid = hid->driver_data;
 unsigned int bufsize = HID_MIN_BUFFER_SIZE;
 int ret;

 gb_hid_find_max_report(hid, HID_INPUT_REPORT, &bufsize);
 gb_hid_find_max_report(hid, HID_OUTPUT_REPORT, &bufsize);
 gb_hid_find_max_report(hid, HID_FEATURE_REPORT, &bufsize);

 if (bufsize > HID_MAX_BUFFER_SIZE)
  bufsize = HID_MAX_BUFFER_SIZE;

 ret = gb_hid_alloc_buffers(ghid, bufsize);
 if (ret)
  return ret;

 if (!(hid->quirks & HID_QUIRK_NO_INIT_REPORTS))
  gb_hid_init_reports(ghid);

 return 0;
}
