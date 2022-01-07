
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {char* name; char* version; TYPE_1__* mem; int handler; int irq_flags; int irq; } ;
struct pci_device_id {int device; } ;
struct pci_dev {int dev; int irq; } ;
struct TYPE_2__ {scalar_t__ internal_addr; int memtype; int size; int addr; } ;


 scalar_t__ DPM_HOST_INT_EN0 ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;


 int UIO_MEM_PHYS ;
 int dev_info (int *,char*,char*) ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int kfree (struct uio_info*) ;
 struct uio_info* kzalloc (int,int ) ;
 int netx_handler ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 scalar_t__ pci_request_regions (struct pci_dev*,char*) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct uio_info*) ;
 scalar_t__ uio_register_device (int *,struct uio_info*) ;

__attribute__((used)) static int netx_pci_probe(struct pci_dev *dev,
     const struct pci_device_id *id)
{
 struct uio_info *info;
 int bar;

 info = kzalloc(sizeof(struct uio_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 if (pci_enable_device(dev))
  goto out_free;

 if (pci_request_regions(dev, "netx"))
  goto out_disable;

 switch (id->device) {
 case 128:
  bar = 0;
  info->name = "netx";
  break;
 case 129:
  bar = 0;
  info->name = "netplc";
  break;
 default:
  bar = 2;
  info->name = "netx_plx";
 }


 info->mem[0].addr = pci_resource_start(dev, bar);
 if (!info->mem[0].addr)
  goto out_release;
 info->mem[0].internal_addr = ioremap(pci_resource_start(dev, bar),
      pci_resource_len(dev, bar));

 if (!info->mem[0].internal_addr)
   goto out_release;

 info->mem[0].size = pci_resource_len(dev, bar);
 info->mem[0].memtype = UIO_MEM_PHYS;
 info->irq = dev->irq;
 info->irq_flags = IRQF_SHARED;
 info->handler = netx_handler;
 info->version = "0.0.1";


 iowrite32(0, info->mem[0].internal_addr + DPM_HOST_INT_EN0);

 if (uio_register_device(&dev->dev, info))
  goto out_unmap;

 pci_set_drvdata(dev, info);
 dev_info(&dev->dev, "Found %s card, registered UIO device.\n",
    info->name);

 return 0;

out_unmap:
 iounmap(info->mem[0].internal_addr);
out_release:
 pci_release_regions(dev);
out_disable:
 pci_disable_device(dev);
out_free:
 kfree(info);
 return -ENODEV;
}
