
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int hp_wireless_input_destroy () ;

__attribute__((used)) static int hpwl_remove(struct acpi_device *device)
{
 hp_wireless_input_destroy();
 return 0;
}
