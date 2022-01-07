
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_led_table {int state; int off_value; int on_value; int name; } ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int acpi_evalf (int ,int*,int ,char*,int ) ;
 int acpi_get_handle (int ,int ,int *) ;
 int hkey_handle ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int mute_led_on_off(struct tp_led_table *t, bool state)
{
 acpi_handle temp;
 int output;

 if (ACPI_FAILURE(acpi_get_handle(hkey_handle, t->name, &temp))) {
  pr_warn("Thinkpad ACPI has no %s interface.\n", t->name);
  return -EIO;
 }

 if (!acpi_evalf(hkey_handle, &output, t->name, "dd",
   state ? t->on_value : t->off_value))
  return -EIO;

 t->state = state;
 return state;
}
