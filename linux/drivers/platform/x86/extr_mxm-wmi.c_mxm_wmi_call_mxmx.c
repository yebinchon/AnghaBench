
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxds_args {int xarg; int args; int func; } ;
struct acpi_buffer {struct mxds_args* member_1; int member_0; } ;
typedef int args ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int) ;
 int MXM_WMMX_FUNC_MXMX ;
 int MXM_WMMX_GUID ;
 int printk (char*,int) ;
 int wmi_evaluate_method (int ,int,int,struct acpi_buffer*,struct acpi_buffer*) ;

int mxm_wmi_call_mxmx(int adapter)
{
 struct mxds_args args = {
  .func = MXM_WMMX_FUNC_MXMX,
  .args = 0,
  .xarg = 1,
 };
 struct acpi_buffer input = { (acpi_size)sizeof(args), &args };
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 acpi_status status;

 printk("calling mux switch %d\n", adapter);

 status = wmi_evaluate_method(MXM_WMMX_GUID, 0x0, adapter, &input,
         &output);

 if (ACPI_FAILURE(status))
  return status;

 printk("mux mutex set switched %d\n", status);
 return 0;

}
