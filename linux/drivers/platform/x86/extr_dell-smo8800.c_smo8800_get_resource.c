
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_resource_extended_irq {int * interrupts; int interrupt_count; } ;
struct TYPE_2__ {struct acpi_resource_extended_irq extended_irq; } ;
struct acpi_resource {scalar_t__ type; TYPE_1__ data; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_RESOURCE_TYPE_EXTENDED_IRQ ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;

__attribute__((used)) static acpi_status smo8800_get_resource(struct acpi_resource *resource,
     void *context)
{
 struct acpi_resource_extended_irq *irq;

 if (resource->type != ACPI_RESOURCE_TYPE_EXTENDED_IRQ)
  return AE_OK;

 irq = &resource->data.extended_irq;
 if (!irq || !irq->interrupt_count)
  return AE_OK;

 *((u32 *)context) = irq->interrupts[0];
 return AE_CTRL_TERMINATE;
}
