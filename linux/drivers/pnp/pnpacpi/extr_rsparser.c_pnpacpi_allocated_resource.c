
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct resource {int flags; } ;
struct TYPE_3__ {int member_0; } ;
struct resource_win {struct resource res; int member_1; TYPE_1__ member_0; } ;
struct pnp_dev {int dev; int data; int capabilities; } ;
struct acpi_resource_vendor_typed {int dummy; } ;
struct acpi_resource_gpio {int shareable; int polarity; int triggering; } ;
struct acpi_resource_dma {int * channels; int transfer; int bus_master; int type; int channel_count; } ;
struct TYPE_4__ {struct acpi_resource_vendor_typed vendor_typed; struct acpi_resource_dma dma; } ;
struct acpi_resource {int type; TYPE_2__ data; } ;
typedef int acpi_status ;
 int AE_ERROR ;
 int AE_OK ;
 int IORESOURCE_DISABLED ;
 int PNP_WRITE ;
 int acpi_dev_gpio_irq_get (int ,int ) ;
 int acpi_dev_irq_flags (int ,int ,int ) ;
 scalar_t__ acpi_dev_resource_address_space (struct acpi_resource*,struct resource_win*) ;
 scalar_t__ acpi_dev_resource_ext_address_space (struct acpi_resource*,struct resource_win*) ;
 scalar_t__ acpi_dev_resource_interrupt (struct acpi_resource*,int,struct resource*) ;
 int acpi_dev_resource_io (struct acpi_resource*,struct resource*) ;
 int acpi_dev_resource_memory (struct acpi_resource*,struct resource*) ;
 scalar_t__ acpi_gpio_get_irq_resource (struct acpi_resource*,struct acpi_resource_gpio**) ;
 int dev_warn (int *,char*,...) ;
 int dma_flags (struct pnp_dev*,int ,int ,int ) ;
 int pnp_add_dma_resource (struct pnp_dev*,int ,int) ;
 int pnp_add_irq_resource (struct pnp_dev*,int,int) ;
 int pnp_add_resource (struct pnp_dev*,struct resource*) ;
 scalar_t__ pnp_can_write (struct pnp_dev*) ;
 int pnpacpi_add_irqresource (struct pnp_dev*,struct resource*) ;
 int pnpacpi_parse_allocated_vendor (struct pnp_dev*,struct acpi_resource_vendor_typed*) ;

__attribute__((used)) static acpi_status pnpacpi_allocated_resource(struct acpi_resource *res,
           void *data)
{
 struct pnp_dev *dev = data;
 struct acpi_resource_dma *dma;
 struct acpi_resource_vendor_typed *vendor_typed;
 struct acpi_resource_gpio *gpio;
 struct resource_win win = {{0}, 0};
 struct resource *r = &win.res;
 int i, flags;

 if (acpi_dev_resource_address_space(res, &win)
     || acpi_dev_resource_ext_address_space(res, &win)) {
  pnp_add_resource(dev, &win.res);
  return AE_OK;
 }

 r->flags = 0;
 if (acpi_dev_resource_interrupt(res, 0, r)) {
  pnpacpi_add_irqresource(dev, r);
  for (i = 1; acpi_dev_resource_interrupt(res, i, r); i++)
   pnpacpi_add_irqresource(dev, r);

  if (i > 1) {





   if (pnp_can_write(dev)) {
    dev_warn(&dev->dev,
      "multiple interrupts in _CRS descriptor; configuration can't be changed\n");
    dev->capabilities &= ~PNP_WRITE;
   }
  }
  return AE_OK;
 } else if (acpi_gpio_get_irq_resource(res, &gpio)) {




  i = acpi_dev_gpio_irq_get(dev->data, 0);
  if (i >= 0) {
   flags = acpi_dev_irq_flags(gpio->triggering,
         gpio->polarity,
         gpio->shareable);
  } else {
   flags = IORESOURCE_DISABLED;
  }
  pnp_add_irq_resource(dev, i, flags);
  return AE_OK;
 } else if (r->flags & IORESOURCE_DISABLED) {
  pnp_add_irq_resource(dev, 0, IORESOURCE_DISABLED);
  return AE_OK;
 }

 switch (res->type) {
 case 132:
 case 131:
 case 135:
  if (acpi_dev_resource_memory(res, r))
   pnp_add_resource(dev, r);
  break;
 case 133:
 case 136:
  if (acpi_dev_resource_io(res, r))
   pnp_add_resource(dev, r);
  break;
 case 139:
  dma = &res->data.dma;
  if (dma->channel_count > 0 && dma->channels[0] != (u8) -1)
   flags = dma_flags(dev, dma->type, dma->bus_master,
       dma->transfer);
  else
   flags = IORESOURCE_DISABLED;
  pnp_add_dma_resource(dev, dma->channels[0], flags);
  break;

 case 129:
 case 138:
  break;

 case 128:
  vendor_typed = &res->data.vendor_typed;
  pnpacpi_parse_allocated_vendor(dev, vendor_typed);
  break;

 case 137:
  break;

 case 134:
  break;

 case 130:

  break;

 default:
  dev_warn(&dev->dev, "unknown resource type %d in _CRS\n",
    res->type);
  return AE_ERROR;
 }

 return AE_OK;
}
