
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixup; int notify; } ;
struct acpiphp_context {int refcount; TYPE_1__ hp; } ;
struct acpi_device {int dummy; } ;


 int GFP_KERNEL ;
 int acpi_set_hp_context (struct acpi_device*,TYPE_1__*) ;
 int acpiphp_hotplug_notify ;
 int acpiphp_post_dock_fixup ;
 struct acpiphp_context* kzalloc (int,int ) ;

__attribute__((used)) static struct acpiphp_context *acpiphp_init_context(struct acpi_device *adev)
{
 struct acpiphp_context *context;

 context = kzalloc(sizeof(*context), GFP_KERNEL);
 if (!context)
  return ((void*)0);

 context->refcount = 1;
 context->hp.notify = acpiphp_hotplug_notify;
 context->hp.fixup = acpiphp_post_dock_fixup;
 acpi_set_hp_context(adev, &context->hp);
 return context;
}
