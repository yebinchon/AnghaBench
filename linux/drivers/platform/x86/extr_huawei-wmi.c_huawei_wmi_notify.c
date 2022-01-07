
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct wmi_device {int dev; } ;


 scalar_t__ ACPI_TYPE_INTEGER ;
 int dev_info (int *,char*,scalar_t__) ;
 int huawei_wmi_process_key (struct wmi_device*,int ) ;

__attribute__((used)) static void huawei_wmi_notify(struct wmi_device *wdev,
  union acpi_object *obj)
{
 if (obj->type == ACPI_TYPE_INTEGER)
  huawei_wmi_process_key(wdev, obj->integer.value);
 else
  dev_info(&wdev->dev, "Bad response type %d\n", obj->type);
}
