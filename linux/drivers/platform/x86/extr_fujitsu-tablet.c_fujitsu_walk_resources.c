
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int address_length; int minimum; } ;
struct TYPE_5__ {int * interrupts; } ;
struct TYPE_6__ {TYPE_3__ io; TYPE_1__ irq; } ;
struct acpi_resource {int type; TYPE_2__ data; } ;
typedef int acpi_status ;
struct TYPE_8__ {int io_base; int irq; int io_length; } ;





 int AE_ERROR ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 TYPE_4__ fujitsu ;

__attribute__((used)) static acpi_status fujitsu_walk_resources(struct acpi_resource *res, void *data)
{
 switch (res->type) {
 case 128:
  fujitsu.irq = res->data.irq.interrupts[0];
  return AE_OK;

 case 129:
  fujitsu.io_base = res->data.io.minimum;
  fujitsu.io_length = res->data.io.address_length;
  return AE_OK;

 case 130:
  if (fujitsu.irq && fujitsu.io_base)
   return AE_OK;
  else
   return AE_NOT_FOUND;

 default:
  return AE_ERROR;
 }
}
