
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whci_card {int n_caps; int uwbbase; struct pci_dev* pci; } ;
struct umc_dev {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int UWBCAPDATA_SIZE (int) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int,int) ;
 int kfree (struct whci_card*) ;
 struct whci_card* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct whci_card*) ;
 int pci_set_master (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,char*) ;
 int whci_add_cap (struct whci_card*,int) ;
 int whci_n_caps (struct pci_dev*) ;

__attribute__((used)) static int whci_probe(struct pci_dev *pci, const struct pci_device_id *id)
{
 struct whci_card *card;
 int err, n_caps, n;

 err = pci_enable_device(pci);
 if (err < 0)
  goto error;
 pci_enable_msi(pci);
 pci_set_master(pci);
 err = -ENXIO;
 if (!pci_set_dma_mask(pci, DMA_BIT_MASK(64)))
  pci_set_consistent_dma_mask(pci, DMA_BIT_MASK(64));
 else if (!pci_set_dma_mask(pci, DMA_BIT_MASK(32)))
  pci_set_consistent_dma_mask(pci, DMA_BIT_MASK(32));
 else
  goto error_dma;

 err = n_caps = whci_n_caps(pci);
 if (n_caps < 0)
  goto error_ncaps;

 err = -ENOMEM;
 card = kzalloc(sizeof(struct whci_card)
         + sizeof(struct umc_dev *) * (n_caps + 1),
         GFP_KERNEL);
 if (card == ((void*)0))
  goto error_kzalloc;
 card->pci = pci;
 card->n_caps = n_caps;

 err = -EBUSY;
 if (!request_mem_region(pci_resource_start(pci, 0),
    UWBCAPDATA_SIZE(card->n_caps),
    "whci (capability data)"))
  goto error_request_memregion;
 err = -ENOMEM;
 card->uwbbase = pci_iomap(pci, 0, UWBCAPDATA_SIZE(card->n_caps));
 if (!card->uwbbase)
  goto error_iomap;


 for (n = 0; n <= card->n_caps; n++) {
  err = whci_add_cap(card, n);
  if (err < 0 && n == 0) {
   dev_err(&pci->dev, "cannot bind UWB radio controller:"
    " %d\n", err);
   goto error_bind;
  }
  if (err < 0)
   dev_warn(&pci->dev, "warning: cannot bind capability "
     "#%u: %d\n", n, err);
 }
 pci_set_drvdata(pci, card);
 return 0;

error_bind:
 pci_iounmap(pci, card->uwbbase);
error_iomap:
 release_mem_region(pci_resource_start(pci, 0), UWBCAPDATA_SIZE(card->n_caps));
error_request_memregion:
 kfree(card);
error_kzalloc:
error_ncaps:
error_dma:
 pci_disable_msi(pci);
 pci_disable_device(pci);
error:
 return err;
}
