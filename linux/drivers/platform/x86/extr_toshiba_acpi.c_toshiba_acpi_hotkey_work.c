
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int ec_get_handle () ;
 int pr_err (char*) ;

__attribute__((used)) static void toshiba_acpi_hotkey_work(struct work_struct *work)
{
 acpi_handle ec_handle = ec_get_handle();
 acpi_status status;

 if (!ec_handle)
  return;

 status = acpi_evaluate_object(ec_handle, "NTFY", ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status))
  pr_err("ACPI NTFY method execution failed\n");
}
