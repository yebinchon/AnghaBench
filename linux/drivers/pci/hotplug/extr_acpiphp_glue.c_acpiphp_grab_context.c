
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* parent; } ;
struct acpiphp_context {TYPE_1__ func; } ;
struct acpi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ is_going_away; } ;


 int acpi_lock_hp_context () ;
 int acpi_unlock_hp_context () ;
 struct acpiphp_context* acpiphp_get_context (struct acpi_device*) ;
 int acpiphp_put_context (struct acpiphp_context*) ;
 int get_bridge (TYPE_2__*) ;

__attribute__((used)) static struct acpiphp_context *acpiphp_grab_context(struct acpi_device *adev)
{
 struct acpiphp_context *context;

 acpi_lock_hp_context();
 context = acpiphp_get_context(adev);
 if (!context || context->func.parent->is_going_away) {
  acpi_unlock_hp_context();
  return ((void*)0);
 }
 get_bridge(context->func.parent);
 acpiphp_put_context(context);
 acpi_unlock_hp_context();
 return context;
}
