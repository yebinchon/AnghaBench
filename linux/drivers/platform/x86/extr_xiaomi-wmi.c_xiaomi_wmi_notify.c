
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct xiaomi_wmi {int input_dev; int key_code; } ;
struct wmi_device {int dev; } ;


 struct xiaomi_wmi* dev_get_drvdata (int *) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

void xiaomi_wmi_notify(struct wmi_device *wdev, union acpi_object *dummy)
{
 struct xiaomi_wmi *data;

 if (wdev == ((void*)0))
  return;

 data = dev_get_drvdata(&wdev->dev);
 if (data == ((void*)0))
  return;

 input_report_key(data->input_dev, data->key_code, 1);
 input_sync(data->input_dev);
 input_report_key(data->input_dev, data->key_code, 0);
 input_sync(data->input_dev);
}
