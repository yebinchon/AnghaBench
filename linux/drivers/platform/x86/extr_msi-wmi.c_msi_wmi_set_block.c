
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {int member_0; int* member_1; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int MSIWMI_BIOS_GUID ;
 int pr_debug (char*,int,int) ;
 int wmi_set_block (int ,int,struct acpi_buffer*) ;

__attribute__((used)) static int msi_wmi_set_block(int instance, int value)
{
 acpi_status status;

 struct acpi_buffer input = { sizeof(int), &value };

 pr_debug("Going to set block of instance: %d - value: %d\n",
   instance, value);

 status = wmi_set_block(MSIWMI_BIOS_GUID, instance, &input);

 return ACPI_SUCCESS(status) ? 0 : 1;
}
