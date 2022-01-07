
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int light_level; int handle; } ;


 int METHOD_ALS_LEVEL ;
 int pr_warn (char*) ;
 scalar_t__ write_acpi_int (int ,int ,int) ;

__attribute__((used)) static void asus_als_level(struct asus_laptop *asus, int value)
{
 if (write_acpi_int(asus->handle, METHOD_ALS_LEVEL, value))
  pr_warn("Error setting light sensor level\n");
 asus->light_level = value;
}
