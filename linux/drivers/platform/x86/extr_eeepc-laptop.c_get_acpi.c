
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int cm_supported; int handle; } ;


 int ENODEV ;
 char** cm_getv ;
 int pr_warn (char*,char const*) ;
 scalar_t__ read_acpi_int (int ,char const*,int*) ;

__attribute__((used)) static int get_acpi(struct eeepc_laptop *eeepc, int cm)
{
 const char *method = cm_getv[cm];
 int value;

 if (method == ((void*)0))
  return -ENODEV;
 if ((eeepc->cm_supported & (0x1 << cm)) == 0)
  return -ENODEV;

 if (read_acpi_int(eeepc->handle, method, &value))
  pr_warn("Error reading %s\n", method);
 return value;
}
