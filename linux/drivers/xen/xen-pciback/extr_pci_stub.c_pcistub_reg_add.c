
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcistub_device {struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct config_field {unsigned int offset; unsigned int size; unsigned int mask; int clean; int * release; int * reset; int * init; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct config_field*) ;
 struct config_field* kzalloc (int,int ) ;
 struct pcistub_device* pcistub_device_find (int,int,int,int) ;
 int pcistub_device_put (struct pcistub_device*) ;
 int xen_pcibk_config_field_free ;
 int xen_pcibk_config_quirks_add_field (struct pci_dev*,struct config_field*) ;

__attribute__((used)) static int pcistub_reg_add(int domain, int bus, int slot, int func,
      unsigned int reg, unsigned int size,
      unsigned int mask)
{
 int err = 0;
 struct pcistub_device *psdev;
 struct pci_dev *dev;
 struct config_field *field;

 if (reg > 0xfff || (size < 4 && (mask >> (size * 8))))
  return -EINVAL;

 psdev = pcistub_device_find(domain, bus, slot, func);
 if (!psdev) {
  err = -ENODEV;
  goto out;
 }
 dev = psdev->dev;

 field = kzalloc(sizeof(*field), GFP_KERNEL);
 if (!field) {
  err = -ENOMEM;
  goto out;
 }

 field->offset = reg;
 field->size = size;
 field->mask = mask;
 field->init = ((void*)0);
 field->reset = ((void*)0);
 field->release = ((void*)0);
 field->clean = xen_pcibk_config_field_free;

 err = xen_pcibk_config_quirks_add_field(dev, field);
 if (err)
  kfree(field);
out:
 if (psdev)
  pcistub_device_put(psdev);
 return err;
}
