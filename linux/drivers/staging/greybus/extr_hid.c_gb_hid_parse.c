
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device {struct gb_hid* driver_data; } ;
struct TYPE_2__ {int wReportDescLength; } ;
struct gb_hid {TYPE_1__ hdesc; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int HID_MAX_DESCRIPTOR_SIZE ;
 int dbg_hid (char*,...) ;
 int gb_hid_get_report_desc (struct gb_hid*,char*) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_parse_report (struct hid_device*,char*,unsigned int) ;
 int kfree (char*) ;
 char* kzalloc (unsigned int,int ) ;
 unsigned int le16_to_cpu (int ) ;

__attribute__((used)) static int gb_hid_parse(struct hid_device *hid)
{
 struct gb_hid *ghid = hid->driver_data;
 unsigned int rsize;
 char *rdesc;
 int ret;

 rsize = le16_to_cpu(ghid->hdesc.wReportDescLength);
 if (!rsize || rsize > HID_MAX_DESCRIPTOR_SIZE) {
  dbg_hid("weird size of report descriptor (%u)\n", rsize);
  return -EINVAL;
 }

 rdesc = kzalloc(rsize, GFP_KERNEL);
 if (!rdesc) {
  return -ENOMEM;
 }

 ret = gb_hid_get_report_desc(ghid, rdesc);
 if (ret) {
  hid_err(hid, "reading report descriptor failed\n");
  goto free_rdesc;
 }

 ret = hid_parse_report(hid, rdesc, rsize);
 if (ret)
  dbg_hid("parsing report descriptor failed\n");

free_rdesc:
 kfree(rdesc);

 return ret;
}
