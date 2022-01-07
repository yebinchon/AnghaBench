
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {char* name; char* version; TYPE_1__* mem; int handler; int irq_flags; int irq; } ;
struct pci_device_id {int subdevice; } ;
struct pci_dev {int dev; int irq; } ;
struct TYPE_2__ {int internal_addr; void* memtype; void* size; void* addr; } ;




 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 void* UIO_MEM_PHYS ;
 int hilscher_handler ;
 int iounmap (int ) ;
 int kfree (struct uio_info*) ;
 struct uio_info* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 scalar_t__ pci_request_regions (struct pci_dev*,char*) ;
 void* pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct uio_info*) ;
 scalar_t__ uio_register_device (int *,struct uio_info*) ;

__attribute__((used)) static int hilscher_pci_probe(struct pci_dev *dev,
     const struct pci_device_id *id)
{
 struct uio_info *info;

 info = kzalloc(sizeof(struct uio_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 if (pci_enable_device(dev))
  goto out_free;

 if (pci_request_regions(dev, "hilscher"))
  goto out_disable;

 info->mem[0].addr = pci_resource_start(dev, 0);
 if (!info->mem[0].addr)
  goto out_release;
 info->mem[0].internal_addr = pci_ioremap_bar(dev, 0);
 if (!info->mem[0].internal_addr)
  goto out_release;

 info->mem[0].size = pci_resource_len(dev, 0);
 info->mem[0].memtype = UIO_MEM_PHYS;
 info->mem[1].addr = pci_resource_start(dev, 2);
 info->mem[1].size = pci_resource_len(dev, 2);
 info->mem[1].memtype = UIO_MEM_PHYS;
 switch (id->subdevice) {
  case 128:
   info->name = "CIF_Profibus";
   break;
  case 129:
   info->name = "CIF_Devicenet";
   break;
  default:
   info->name = "CIF_???";
 }
 info->version = "0.0.1";
 info->irq = dev->irq;
 info->irq_flags = IRQF_SHARED;
 info->handler = hilscher_handler;

 if (uio_register_device(&dev->dev, info))
  goto out_unmap;

 pci_set_drvdata(dev, info);

 return 0;
out_unmap:
 iounmap(info->mem[0].internal_addr);
out_release:
 pci_release_regions(dev);
out_disable:
 pci_disable_device(dev);
out_free:
 kfree (info);
 return -ENODEV;
}
