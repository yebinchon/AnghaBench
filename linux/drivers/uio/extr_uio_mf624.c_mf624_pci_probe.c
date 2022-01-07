
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {char* name; char* version; TYPE_1__* mem; int irqcontrol; int handler; int irq_flags; int irq; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct TYPE_2__ {int internal_addr; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int iounmap (int ) ;
 int kfree (struct uio_info*) ;
 struct uio_info* kzalloc (int,int ) ;
 int mf624_irq_handler ;
 int mf624_irqcontrol ;
 scalar_t__ mf624_setup_mem (struct pci_dev*,int,TYPE_1__*,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 scalar_t__ pci_request_regions (struct pci_dev*,char*) ;
 int pci_set_drvdata (struct pci_dev*,struct uio_info*) ;
 scalar_t__ uio_register_device (int *,struct uio_info*) ;

__attribute__((used)) static int mf624_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct uio_info *info;

 info = kzalloc(sizeof(struct uio_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 if (pci_enable_device(dev))
  goto out_free;

 if (pci_request_regions(dev, "mf624"))
  goto out_disable;

 info->name = "mf624";
 info->version = "0.0.1";




 if (mf624_setup_mem(dev, 0, &info->mem[0], "PCI chipset, interrupts, status "
       "bits, special functions"))
  goto out_release;

 if (mf624_setup_mem(dev, 2, &info->mem[1], "ADC, DAC, DIO"))
  goto out_unmap0;


 if (mf624_setup_mem(dev, 4, &info->mem[2], "Counter/timer chip"))
  goto out_unmap1;

 info->irq = dev->irq;
 info->irq_flags = IRQF_SHARED;
 info->handler = mf624_irq_handler;

 info->irqcontrol = mf624_irqcontrol;

 if (uio_register_device(&dev->dev, info))
  goto out_unmap2;

 pci_set_drvdata(dev, info);

 return 0;

out_unmap2:
 iounmap(info->mem[2].internal_addr);
out_unmap1:
 iounmap(info->mem[1].internal_addr);
out_unmap0:
 iounmap(info->mem[0].internal_addr);

out_release:
 pci_release_regions(dev);

out_disable:
 pci_disable_device(dev);

out_free:
 kfree(info);
 return -ENODEV;
}
