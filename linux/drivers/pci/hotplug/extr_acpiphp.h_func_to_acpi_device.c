
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpiphp_func {int dummy; } ;
struct acpi_device {int dummy; } ;
struct TYPE_3__ {struct acpi_device* self; } ;
struct TYPE_4__ {TYPE_1__ hp; } ;


 TYPE_2__* func_to_context (struct acpiphp_func*) ;

__attribute__((used)) static inline struct acpi_device *func_to_acpi_device(struct acpiphp_func *func)
{
 return func_to_context(func)->hp.self;
}
