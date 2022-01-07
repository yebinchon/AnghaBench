
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct platform_device {int dev; } ;
struct intel_vbtn_priv {int input_dev; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int DMI_CHASSIS_TYPE ;
 int DOCK_MODE_FLAG ;
 int SW_DOCK ;
 int SW_TABLET_MODE ;
 int TABLET_MODE_FLAG ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 struct intel_vbtn_priv* dev_get_drvdata (int *) ;
 char* dmi_get_system_info (int ) ;
 int input_report_switch (int ,int ,int) ;
 int kfree (union acpi_object*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void detect_tablet_mode(struct platform_device *device)
{
 const char *chassis_type = dmi_get_system_info(DMI_CHASSIS_TYPE);
 struct intel_vbtn_priv *priv = dev_get_drvdata(&device->dev);
 acpi_handle handle = ACPI_HANDLE(&device->dev);
 struct acpi_buffer vgbs_output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;
 int m;

 if (!(chassis_type && strcmp(chassis_type, "31") == 0))
  goto out;

 status = acpi_evaluate_object(handle, "VGBS", ((void*)0), &vgbs_output);
 if (ACPI_FAILURE(status))
  goto out;

 obj = vgbs_output.pointer;
 if (!(obj && obj->type == ACPI_TYPE_INTEGER))
  goto out;

 m = !(obj->integer.value & TABLET_MODE_FLAG);
 input_report_switch(priv->input_dev, SW_TABLET_MODE, m);
 m = (obj->integer.value & DOCK_MODE_FLAG) ? 1 : 0;
 input_report_switch(priv->input_dev, SW_DOCK, m);
out:
 kfree(vgbs_output.pointer);
}
