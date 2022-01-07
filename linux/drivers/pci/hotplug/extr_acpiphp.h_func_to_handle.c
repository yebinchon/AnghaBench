
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpiphp_func {int dummy; } ;
typedef int acpi_handle ;
struct TYPE_2__ {int handle; } ;


 TYPE_1__* func_to_acpi_device (struct acpiphp_func*) ;

__attribute__((used)) static inline acpi_handle func_to_handle(struct acpiphp_func *func)
{
 return func_to_acpi_device(func)->handle;
}
