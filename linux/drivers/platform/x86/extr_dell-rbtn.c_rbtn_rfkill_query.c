
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct acpi_device {int dummy; } ;


 int rbtn_get (struct acpi_device*) ;
 int rfkill_set_states (struct rfkill*,int,int) ;

__attribute__((used)) static void rbtn_rfkill_query(struct rfkill *rfkill, void *data)
{
 struct acpi_device *device = data;
 int state;

 state = rbtn_get(device);
 if (state < 0)
  return;

 rfkill_set_states(rfkill, state, state);
}
