
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; } ;


 int METHOD_SWITCH_DISPLAY ;
 int pr_warn (char*) ;
 scalar_t__ write_acpi_int (int ,int ,int) ;

__attribute__((used)) static void asus_set_display(struct asus_laptop *asus, int value)
{

 if (write_acpi_int(asus->handle, METHOD_SWITCH_DISPLAY, value))
  pr_warn("Error setting display\n");
 return;
}
