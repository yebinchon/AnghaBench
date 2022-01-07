
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int domain; } ;
struct vmd_dev {int msix_count; TYPE_1__ sysdata; struct pci_dev* dev; int cfg_lock; TYPE_2__* irqs; int cfgbar; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; int * resource; } ;
struct TYPE_5__ {int irq_list; int srcu; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_NO_THREAD ;
 int PCI_IRQ_MSIX ;
 size_t VMD_CFGBAR ;
 int dev_info (int *,char*,int ) ;
 TYPE_2__* devm_kcalloc (int *,int,int,int ) ;
 struct vmd_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int ,int ,int ,char*,TYPE_2__*) ;
 scalar_t__ dma_set_mask_and_coherent (int *,int ) ;
 int init_srcu_struct (int *) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int pci_msix_vec_count (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct vmd_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap (struct pci_dev*,size_t,int ) ;
 int resource_size (int *) ;
 int spin_lock_init (int *) ;
 int vmd_enable_domain (struct vmd_dev*,unsigned long) ;
 int vmd_irq ;

__attribute__((used)) static int vmd_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct vmd_dev *vmd;
 int i, err;

 if (resource_size(&dev->resource[VMD_CFGBAR]) < (1 << 20))
  return -ENOMEM;

 vmd = devm_kzalloc(&dev->dev, sizeof(*vmd), GFP_KERNEL);
 if (!vmd)
  return -ENOMEM;

 vmd->dev = dev;
 err = pcim_enable_device(dev);
 if (err < 0)
  return err;

 vmd->cfgbar = pcim_iomap(dev, VMD_CFGBAR, 0);
 if (!vmd->cfgbar)
  return -ENOMEM;

 pci_set_master(dev);
 if (dma_set_mask_and_coherent(&dev->dev, DMA_BIT_MASK(64)) &&
     dma_set_mask_and_coherent(&dev->dev, DMA_BIT_MASK(32)))
  return -ENODEV;

 vmd->msix_count = pci_msix_vec_count(dev);
 if (vmd->msix_count < 0)
  return -ENODEV;

 vmd->msix_count = pci_alloc_irq_vectors(dev, 1, vmd->msix_count,
     PCI_IRQ_MSIX);
 if (vmd->msix_count < 0)
  return vmd->msix_count;

 vmd->irqs = devm_kcalloc(&dev->dev, vmd->msix_count, sizeof(*vmd->irqs),
     GFP_KERNEL);
 if (!vmd->irqs)
  return -ENOMEM;

 for (i = 0; i < vmd->msix_count; i++) {
  err = init_srcu_struct(&vmd->irqs[i].srcu);
  if (err)
   return err;

  INIT_LIST_HEAD(&vmd->irqs[i].irq_list);
  err = devm_request_irq(&dev->dev, pci_irq_vector(dev, i),
           vmd_irq, IRQF_NO_THREAD,
           "vmd", &vmd->irqs[i]);
  if (err)
   return err;
 }

 spin_lock_init(&vmd->cfg_lock);
 pci_set_drvdata(dev, vmd);
 err = vmd_enable_domain(vmd, (unsigned long) id->driver_data);
 if (err)
  return err;

 dev_info(&vmd->dev->dev, "Bound to PCI domain %04x\n",
   vmd->sysdata.domain);
 return 0;
}
