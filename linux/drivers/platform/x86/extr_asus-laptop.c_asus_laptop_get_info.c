
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* pointer; } ;
struct TYPE_3__ {char* pointer; } ;
union acpi_object {int type; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef char* uint ;
struct asus_laptop {int have_rsts; int handle; int name; int dsdt_info; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_DSDT ;


 int AE_OK ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int METHOD_WL_STATUS ;
 int acpi_check_handle (int ,int ,int *) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_get_table (int ,int,int *) ;
 int kfree (union acpi_object*) ;
 int kstrdup (char*,int ) ;
 int pr_err (char*,...) ;
 int pr_notice (char*,char*) ;
 int pr_warn (char*) ;
 int wapf ;
 scalar_t__ write_acpi_int (int ,char*,int ) ;
 scalar_t__ write_acpi_int_ret (int ,char*,int ,struct acpi_buffer*) ;

__attribute__((used)) static int asus_laptop_get_info(struct asus_laptop *asus)
{
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *model = ((void*)0);
 unsigned long long bsts_result;
 char *string = ((void*)0);
 acpi_status status;
 status = acpi_get_table(ACPI_SIG_DSDT, 1, &asus->dsdt_info);
 if (ACPI_FAILURE(status))
  pr_warn("Couldn't get the DSDT table header\n");


 if (write_acpi_int_ret(asus->handle, "INIT", 0, &buffer)) {
  pr_err("Hotkey initialization failed\n");
  return -ENODEV;
 }


 status =
     acpi_evaluate_integer(asus->handle, "BSTS", ((void*)0), &bsts_result);
 if (ACPI_FAILURE(status))
  pr_warn("Error calling BSTS\n");
 else if (bsts_result)
  pr_notice("BSTS called, 0x%02x returned\n",
         (uint) bsts_result);


 if (write_acpi_int(asus->handle, "CWAP", wapf))
  pr_err("Error calling CWAP(%d)\n", wapf);






 if (buffer.pointer) {
  model = buffer.pointer;
  switch (model->type) {
  case 128:
   string = model->string.pointer;
   break;
  case 129:
   string = model->buffer.pointer;
   break;
  default:
   string = "";
   break;
  }
 }
 asus->name = kstrdup(string, GFP_KERNEL);
 if (!asus->name) {
  kfree(buffer.pointer);
  return -ENOMEM;
 }

 if (string)
  pr_notice("  %s model detected\n", string);

 if (!acpi_check_handle(asus->handle, METHOD_WL_STATUS, ((void*)0)))
  asus->have_rsts = 1;

 kfree(model);

 return AE_OK;
}
