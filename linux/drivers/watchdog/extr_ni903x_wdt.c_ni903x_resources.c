
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ni903x_wdt {int dev; int io_base; } ;
struct TYPE_3__ {int address_length; int minimum; } ;
struct TYPE_4__ {TYPE_1__ io; } ;
struct acpi_resource {int type; TYPE_2__ data; } ;
typedef int acpi_status ;




 int AE_ERROR ;
 int AE_OK ;
 int NIWD_IO_SIZE ;
 int NIWD_NAME ;
 int dev_err (int ,char*) ;
 int devm_request_region (int ,int ,int ,int ) ;

__attribute__((used)) static acpi_status ni903x_resources(struct acpi_resource *res, void *data)
{
 struct ni903x_wdt *wdt = data;
 u16 io_size;

 switch (res->type) {
 case 128:
  if (wdt->io_base != 0) {
   dev_err(wdt->dev, "too many IO resources\n");
   return AE_ERROR;
  }

  wdt->io_base = res->data.io.minimum;
  io_size = res->data.io.address_length;

  if (io_size < NIWD_IO_SIZE) {
   dev_err(wdt->dev, "memory region too small\n");
   return AE_ERROR;
  }

  if (!devm_request_region(wdt->dev, wdt->io_base, io_size,
      NIWD_NAME)) {
   dev_err(wdt->dev, "failed to get memory region\n");
   return AE_ERROR;
  }

  return AE_OK;

 case 129:
 default:

  return AE_OK;
 }
}
