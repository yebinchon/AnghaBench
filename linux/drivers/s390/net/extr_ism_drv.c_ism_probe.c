
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct ism_dev {TYPE_1__* smcd; struct pci_dev* pdev; int lock; } ;
struct TYPE_3__ {struct ism_dev* priv; } ;


 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ISM_NR_DMBS ;
 scalar_t__ SZ_1M ;
 int dev_name (int *) ;
 int dev_set_drvdata (int *,struct ism_dev*) ;
 int dma_set_max_seg_size (int *,scalar_t__) ;
 int dma_set_seg_boundary (int *,scalar_t__) ;
 int ism_dev_init (struct ism_dev*) ;
 int ism_ops ;
 int kfree (struct ism_dev*) ;
 struct ism_dev* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pci_request_mem_regions (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 TYPE_1__* smcd_alloc_dev (int *,int ,int *,int ) ;
 int smcd_free_dev (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ism_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct ism_dev *ism;
 int ret;

 ism = kzalloc(sizeof(*ism), GFP_KERNEL);
 if (!ism)
  return -ENOMEM;

 spin_lock_init(&ism->lock);
 dev_set_drvdata(&pdev->dev, ism);
 ism->pdev = pdev;

 ret = pci_enable_device_mem(pdev);
 if (ret)
  goto err;

 ret = pci_request_mem_regions(pdev, DRV_NAME);
 if (ret)
  goto err_disable;

 ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (ret)
  goto err_resource;

 dma_set_seg_boundary(&pdev->dev, SZ_1M - 1);
 dma_set_max_seg_size(&pdev->dev, SZ_1M);
 pci_set_master(pdev);

 ism->smcd = smcd_alloc_dev(&pdev->dev, dev_name(&pdev->dev), &ism_ops,
       ISM_NR_DMBS);
 if (!ism->smcd)
  goto err_resource;

 ism->smcd->priv = ism;
 ret = ism_dev_init(ism);
 if (ret)
  goto err_free;

 return 0;

err_free:
 smcd_free_dev(ism->smcd);
err_resource:
 pci_release_mem_regions(pdev);
err_disable:
 pci_disable_device(pdev);
err:
 kfree(ism);
 dev_set_drvdata(&pdev->dev, ((void*)0));
 return ret;
}
