
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; } ;


 int METHOD_GLED ;
 int METHOD_MLED ;
 int strcmp (char const*,int ) ;
 int write_acpi_int (int ,char const*,int) ;

__attribute__((used)) static int asus_led_set(struct asus_laptop *asus, const char *method,
    int value)
{
 if (!strcmp(method, METHOD_MLED))
  value = !value;
 else if (!strcmp(method, METHOD_GLED))
  value = !value + 1;
 else
  value = !!value;

 return write_acpi_int(asus->handle, method, value);
}
