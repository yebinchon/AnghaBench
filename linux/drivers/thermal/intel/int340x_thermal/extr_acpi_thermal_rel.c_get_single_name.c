
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {int pointer; int member_0; } ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NAMESEG_SIZE ;
 int ACPI_SINGLE_NAME ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int kfree (int ) ;
 int memcpy (char*,int ,int ) ;
 int pr_warn (char*) ;

__attribute__((used)) static void get_single_name(acpi_handle handle, char *name)
{
 struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER};

 if (ACPI_FAILURE(acpi_get_name(handle, ACPI_SINGLE_NAME, &buffer)))
  pr_warn("Failed to get device name from acpi handle\n");
 else {
  memcpy(name, buffer.pointer, ACPI_NAMESEG_SIZE);
  kfree(buffer.pointer);
 }
}
