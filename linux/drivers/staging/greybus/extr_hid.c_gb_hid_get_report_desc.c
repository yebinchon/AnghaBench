
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wReportDescLength; } ;
struct gb_hid {int bundle; TYPE_1__ hdesc; int connection; } ;


 int GB_HID_TYPE_GET_REPORT_DESC ;
 int gb_operation_sync (int ,int ,int *,int ,char*,int ) ;
 int gb_pm_runtime_get_sync (int ) ;
 int gb_pm_runtime_put_autosuspend (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gb_hid_get_report_desc(struct gb_hid *ghid, char *rdesc)
{
 int ret;

 ret = gb_pm_runtime_get_sync(ghid->bundle);
 if (ret)
  return ret;

 ret = gb_operation_sync(ghid->connection, GB_HID_TYPE_GET_REPORT_DESC,
    ((void*)0), 0, rdesc,
    le16_to_cpu(ghid->hdesc.wReportDescLength));

 gb_pm_runtime_put_autosuspend(ghid->bundle);

 return ret;
}
