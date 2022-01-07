
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rfkill {int dummy; } ;
struct eeepc_laptop {TYPE_1__* platform_device; } ;
typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
typedef int acpi_handle ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int acpi_setter_handle (struct eeepc_laptop*,int,int *) ;
 int eeepc_rfkill_ops ;
 int get_acpi (struct eeepc_laptop*,int) ;
 struct rfkill* rfkill_alloc (char const*,int *,int,int *,int ) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_init_sw_state (struct rfkill*,int) ;
 int rfkill_register (struct rfkill*) ;

__attribute__((used)) static int eeepc_new_rfkill(struct eeepc_laptop *eeepc,
       struct rfkill **rfkill,
       const char *name,
       enum rfkill_type type, int cm)
{
 acpi_handle handle;
 int result;

 result = acpi_setter_handle(eeepc, cm, &handle);
 if (result < 0)
  return result;

 *rfkill = rfkill_alloc(name, &eeepc->platform_device->dev, type,
          &eeepc_rfkill_ops, handle);

 if (!*rfkill)
  return -EINVAL;

 rfkill_init_sw_state(*rfkill, get_acpi(eeepc, cm) != 1);
 result = rfkill_register(*rfkill);
 if (result) {
  rfkill_destroy(*rfkill);
  *rfkill = ((void*)0);
  return result;
 }
 return 0;
}
