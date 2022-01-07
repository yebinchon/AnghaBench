
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef int u32 ;
struct seq_file {struct asus_wmi* private; } ;
struct bios_args {int arg1; int arg0; } ;
struct TYPE_4__ {int ctrl_param; int dev_id; int method_id; } ;
struct asus_wmi {TYPE_2__ debug; } ;
struct acpi_buffer {scalar_t__ pointer; struct bios_args* member_1; int member_0; } ;
typedef int args ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ASUS_WMI_MGMT_GUID ;
 int EIO ;
 int kfree (union acpi_object*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int) ;
 int wmi_evaluate_method (int ,int ,int ,struct acpi_buffer*,struct acpi_buffer*) ;

__attribute__((used)) static int show_call(struct seq_file *m, void *data)
{
 struct asus_wmi *asus = m->private;
 struct bios_args args = {
  .arg0 = asus->debug.dev_id,
  .arg1 = asus->debug.ctrl_param,
 };
 struct acpi_buffer input = { (acpi_size) sizeof(args), &args };
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;

 status = wmi_evaluate_method(ASUS_WMI_MGMT_GUID,
         0, asus->debug.method_id,
         &input, &output);

 if (ACPI_FAILURE(status))
  return -EIO;

 obj = (union acpi_object *)output.pointer;
 if (obj && obj->type == ACPI_TYPE_INTEGER)
  seq_printf(m, "%#x(%#x, %#x) = %#x\n", asus->debug.method_id,
      asus->debug.dev_id, asus->debug.ctrl_param,
      (u32) obj->integer.value);
 else
  seq_printf(m, "%#x(%#x, %#x) = t:%d\n", asus->debug.method_id,
      asus->debug.dev_id, asus->debug.ctrl_param,
      obj ? obj->type : -1);

 kfree(obj);

 return 0;
}
