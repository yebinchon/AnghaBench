
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpiphp_context {int dummy; } ;
struct acpi_device {int dummy; } ;


 int ENODATA ;
 struct acpiphp_context* acpiphp_grab_context (struct acpi_device*) ;
 int acpiphp_let_context_go (struct acpiphp_context*) ;
 int hotplug_event (int ,struct acpiphp_context*) ;

__attribute__((used)) static int acpiphp_hotplug_notify(struct acpi_device *adev, u32 type)
{
 struct acpiphp_context *context;

 context = acpiphp_grab_context(adev);
 if (!context)
  return -ENODATA;

 hotplug_event(type, context);
 acpiphp_let_context_go(context);
 return 0;
}
