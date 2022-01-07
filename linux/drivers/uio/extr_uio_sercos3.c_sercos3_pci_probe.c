
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {char* name; char* version; TYPE_1__* mem; int irqcontrol; int handler; int irq_flags; int irq; struct uio_info* priv; int ier0_cache_lock; } ;
struct sercos3_priv {char* name; char* version; TYPE_1__* mem; int irqcontrol; int handler; int irq_flags; int irq; struct sercos3_priv* priv; int ier0_cache_lock; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct TYPE_2__ {scalar_t__ internal_addr; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int iounmap (scalar_t__) ;
 int kfree (struct uio_info*) ;
 struct uio_info* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 scalar_t__ pci_request_regions (struct pci_dev*,char*) ;
 int pci_set_drvdata (struct pci_dev*,struct uio_info*) ;
 int sercos3_handler ;
 int sercos3_irqcontrol ;
 scalar_t__ sercos3_setup_iomem (struct pci_dev*,struct uio_info*,int,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ uio_register_device (int *,struct uio_info*) ;

__attribute__((used)) static int sercos3_pci_probe(struct pci_dev *dev,
           const struct pci_device_id *id)
{
 struct uio_info *info;
 struct sercos3_priv *priv;
 int i;

 info = kzalloc(sizeof(struct uio_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 priv = kzalloc(sizeof(struct sercos3_priv), GFP_KERNEL);
 if (!priv)
  goto out_free;

 if (pci_enable_device(dev))
  goto out_free_priv;

 if (pci_request_regions(dev, "sercos3"))
  goto out_disable;


 if (sercos3_setup_iomem(dev, info, 0, 0))
  goto out_unmap;
 if (sercos3_setup_iomem(dev, info, 1, 2))
  goto out_unmap;
 if (sercos3_setup_iomem(dev, info, 2, 3))
  goto out_unmap;
 if (sercos3_setup_iomem(dev, info, 3, 4))
  goto out_unmap;
 if (sercos3_setup_iomem(dev, info, 4, 5))
  goto out_unmap;

 spin_lock_init(&priv->ier0_cache_lock);
 info->priv = priv;
 info->name = "Sercos_III_PCI";
 info->version = "0.0.1";
 info->irq = dev->irq;
 info->irq_flags = IRQF_SHARED;
 info->handler = sercos3_handler;
 info->irqcontrol = sercos3_irqcontrol;

 pci_set_drvdata(dev, info);

 if (uio_register_device(&dev->dev, info))
  goto out_unmap;

 return 0;

out_unmap:
 for (i = 0; i < 5; i++) {
  if (info->mem[i].internal_addr)
   iounmap(info->mem[i].internal_addr);
 }
 pci_release_regions(dev);
out_disable:
 pci_disable_device(dev);
out_free_priv:
 kfree(priv);
out_free:
 kfree(info);
 return -ENODEV;
}
