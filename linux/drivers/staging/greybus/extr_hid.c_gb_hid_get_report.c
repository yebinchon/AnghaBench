
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct gb_hid_get_report_request {void* report_id; void* report_type; } ;
struct gb_hid {int bundle; int connection; } ;
typedef int request ;


 int GB_HID_TYPE_GET_REPORT ;
 int gb_operation_sync (int ,int ,struct gb_hid_get_report_request*,int,unsigned char*,int) ;
 int gb_pm_runtime_get_sync (int ) ;
 int gb_pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int gb_hid_get_report(struct gb_hid *ghid, u8 report_type, u8 report_id,
        unsigned char *buf, int len)
{
 struct gb_hid_get_report_request request;
 int ret;

 ret = gb_pm_runtime_get_sync(ghid->bundle);
 if (ret)
  return ret;

 request.report_type = report_type;
 request.report_id = report_id;

 ret = gb_operation_sync(ghid->connection, GB_HID_TYPE_GET_REPORT,
    &request, sizeof(request), buf, len);

 gb_pm_runtime_put_autosuspend(ghid->bundle);

 return ret;
}
