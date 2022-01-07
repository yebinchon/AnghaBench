
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct device* parent; int * bus; int * type; } ;
struct TYPE_6__ {int setable; TYPE_3__ dev; } ;
struct TYPE_5__ {int object_id; } ;
struct wmi_block {int read_takes_no_args; TYPE_2__ dev; TYPE_1__ gblock; int char_mutex; } ;
struct guid_block {int flags; int guid; } ;
struct device {int dummy; } ;
struct acpi_device_info {scalar_t__ type; scalar_t__ param_count; } ;
struct acpi_device {int handle; } ;


 scalar_t__ ACPI_TYPE_METHOD ;
 int ACPI_WMI_EVENT ;
 int ACPI_WMI_METHOD ;
 int dev_set_name (TYPE_3__*,char*,int ) ;
 int dev_warn (struct device*,char*,char*) ;
 int device_initialize (TYPE_3__*) ;
 int get_subobj_info (int ,char*,struct acpi_device_info**) ;
 int kfree (struct acpi_device_info*) ;
 int mutex_init (int *) ;
 int strcpy (char*,char*) ;
 int strncat (char*,int ,int) ;
 int wmi_bus_type ;
 int wmi_type_data ;
 int wmi_type_event ;
 int wmi_type_method ;

__attribute__((used)) static int wmi_create_device(struct device *wmi_bus_dev,
        const struct guid_block *gblock,
        struct wmi_block *wblock,
        struct acpi_device *device)
{
 struct acpi_device_info *info;
 char method[5];
 int result;

 if (gblock->flags & ACPI_WMI_EVENT) {
  wblock->dev.dev.type = &wmi_type_event;
  goto out_init;
 }

 if (gblock->flags & ACPI_WMI_METHOD) {
  wblock->dev.dev.type = &wmi_type_method;
  mutex_init(&wblock->char_mutex);
  goto out_init;
 }






 strcpy(method, "WQ");
 strncat(method, wblock->gblock.object_id, 2);
 result = get_subobj_info(device->handle, method, &info);

 if (result) {
  dev_warn(wmi_bus_dev,
    "%s data block query control method not found\n",
    method);
  return result;
 }

 wblock->dev.dev.type = &wmi_type_data;
 if (info->type != ACPI_TYPE_METHOD || info->param_count == 0)
  wblock->read_takes_no_args = 1;

 kfree(info);

 strcpy(method, "WS");
 strncat(method, wblock->gblock.object_id, 2);
 result = get_subobj_info(device->handle, method, ((void*)0));

 if (result == 0)
  wblock->dev.setable = 1;

 out_init:
 wblock->dev.dev.bus = &wmi_bus_type;
 wblock->dev.dev.parent = wmi_bus_dev;

 dev_set_name(&wblock->dev.dev, "%pUL", gblock->guid);

 device_initialize(&wblock->dev.dev);

 return 0;
}
