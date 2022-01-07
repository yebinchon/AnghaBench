
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_context {int refcount; } ;
struct acpi_device {int hp; } ;


 struct acpiphp_context* to_acpiphp_context (int ) ;

__attribute__((used)) static struct acpiphp_context *acpiphp_get_context(struct acpi_device *adev)
{
 struct acpiphp_context *context;

 if (!adev->hp)
  return ((void*)0);

 context = to_acpiphp_context(adev->hp);
 context->refcount++;
 return context;
}
