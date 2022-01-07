
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int cm_supported; int handle; } ;


 int ENODEV ;
 char** cm_setv ;
 int pr_warn (char*,char const*) ;
 scalar_t__ write_acpi_int (int ,char const*,int) ;

__attribute__((used)) static int set_acpi(struct eeepc_laptop *eeepc, int cm, int value)
{
 const char *method = cm_setv[cm];

 if (method == ((void*)0))
  return -ENODEV;
 if ((eeepc->cm_supported & (0x1 << cm)) == 0)
  return -ENODEV;

 if (write_acpi_int(eeepc->handle, method, value))
  pr_warn("Error writing %s\n", method);
 return 0;
}
