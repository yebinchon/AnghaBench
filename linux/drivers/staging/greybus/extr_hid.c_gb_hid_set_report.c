
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct gb_operation {TYPE_3__* connection; TYPE_1__* request; } ;
struct gb_hid_set_report_request {int report; void* report_id; void* report_type; } ;
struct gb_hid {int bundle; int connection; } ;
struct TYPE_6__ {TYPE_2__* bundle; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct gb_hid_set_report_request* payload; } ;


 int ENOMEM ;
 int GB_HID_TYPE_SET_REPORT ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 struct gb_operation* gb_operation_create (int ,int ,int,int ,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync (struct gb_operation*) ;
 int gb_pm_runtime_get_sync (int ) ;
 int gb_pm_runtime_put_autosuspend (int ) ;
 int memcpy (int ,unsigned char*,int) ;

__attribute__((used)) static int gb_hid_set_report(struct gb_hid *ghid, u8 report_type, u8 report_id,
        unsigned char *buf, int len)
{
 struct gb_hid_set_report_request *request;
 struct gb_operation *operation;
 int ret, size = sizeof(*request) + len - 1;

 ret = gb_pm_runtime_get_sync(ghid->bundle);
 if (ret)
  return ret;

 operation = gb_operation_create(ghid->connection,
     GB_HID_TYPE_SET_REPORT, size, 0,
     GFP_KERNEL);
 if (!operation) {
  gb_pm_runtime_put_autosuspend(ghid->bundle);
  return -ENOMEM;
 }

 request = operation->request->payload;
 request->report_type = report_type;
 request->report_id = report_id;
 memcpy(request->report, buf, len);

 ret = gb_operation_request_send_sync(operation);
 if (ret) {
  dev_err(&operation->connection->bundle->dev,
   "failed to set report: %d\n", ret);
 } else {
  ret = len;
 }

 gb_operation_put(operation);
 gb_pm_runtime_put_autosuspend(ghid->bundle);

 return ret;
}
