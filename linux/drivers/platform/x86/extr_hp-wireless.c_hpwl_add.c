
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int hp_wireless_input_setup () ;
 int pr_err (char*) ;

__attribute__((used)) static int hpwl_add(struct acpi_device *device)
{
 int err;

 err = hp_wireless_input_setup();
 if (err)
  pr_err("Failed to setup hp wireless hotkeys\n");

 return err;
}
