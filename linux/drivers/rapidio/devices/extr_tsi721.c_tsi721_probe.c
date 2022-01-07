
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsi721_device {void* odb_base; void* regs; TYPE_1__* p2r_bar; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int * resource; } ;
struct TYPE_2__ {scalar_t__ size; void* base; } ;


 int BAR_0 ;
 int BAR_1 ;
 int BAR_2 ;
 int BAR_4 ;
 int BUG_ON (int) ;
 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT ;
 int IORESOURCE_MEM ;
 int IORESOURCE_MEM_64 ;
 int IORESOURCE_PREFETCH ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_DEVCTL2_COMP_TIMEOUT ;
 int PCI_EXP_DEVCTL_NOSNOOP_EN ;
 int PCI_EXP_DEVCTL_READRQ ;
 int PCI_EXP_DEVCTL_RELAX_EN ;
 int PCI_STD_RESOURCE_END ;
 scalar_t__ TSI721_DB_WIN_SIZE ;
 int TSI721_MSIXPBA_OFFSET ;
 int TSI721_MSIXTBL_OFFSET ;
 int TSI721_PCIECFG_EPCTL ;
 int TSI721_PCIECFG_MSIXPBA ;
 int TSI721_PCIECFG_MSIXTBL ;
 scalar_t__ TSI721_REG_SPACE_SIZE ;
 int iounmap (void*) ;
 int kfree (struct tsi721_device*) ;
 struct tsi721_device* kzalloc (int,int ) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 void* pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int ) ;
 void* pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct tsi721_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int,int) ;
 int pcie_mrrs ;
 int tsi721_bdma_maint_free (struct tsi721_device*) ;
 scalar_t__ tsi721_bdma_maint_init (struct tsi721_device*) ;
 int tsi721_disable_ints (struct tsi721_device*) ;
 int tsi721_doorbell_free (struct tsi721_device*) ;
 int tsi721_doorbell_init (struct tsi721_device*) ;
 int tsi721_init_pc2sr_mapping (struct tsi721_device*) ;
 int tsi721_init_sr2pc_mapping (struct tsi721_device*) ;
 int tsi721_interrupts_init (struct tsi721_device*) ;
 int tsi721_messages_init (struct tsi721_device*) ;
 int tsi721_port_write_free (struct tsi721_device*) ;
 int tsi721_port_write_init (struct tsi721_device*) ;
 int tsi721_setup_mport (struct tsi721_device*) ;
 int tsi_debug (int ,int *,char*,...) ;
 int tsi_err (int *,char*) ;
 int tsi_info (int *,char*,...) ;

__attribute__((used)) static int tsi721_probe(struct pci_dev *pdev,
      const struct pci_device_id *id)
{
 struct tsi721_device *priv;
 int err;

 priv = kzalloc(sizeof(struct tsi721_device), GFP_KERNEL);
 if (!priv) {
  err = -ENOMEM;
  goto err_exit;
 }

 err = pci_enable_device(pdev);
 if (err) {
  tsi_err(&pdev->dev, "Failed to enable PCI device");
  goto err_clean;
 }

 priv->pdev = pdev;
 if (!(pci_resource_flags(pdev, BAR_0) & IORESOURCE_MEM) ||
     pci_resource_flags(pdev, BAR_0) & IORESOURCE_MEM_64 ||
     pci_resource_len(pdev, BAR_0) < TSI721_REG_SPACE_SIZE) {
  tsi_err(&pdev->dev, "Missing or misconfigured CSR BAR0");
  err = -ENODEV;
  goto err_disable_pdev;
 }


 if (!(pci_resource_flags(pdev, BAR_1) & IORESOURCE_MEM) ||
     pci_resource_flags(pdev, BAR_1) & IORESOURCE_MEM_64 ||
     pci_resource_len(pdev, BAR_1) < TSI721_DB_WIN_SIZE) {
  tsi_err(&pdev->dev, "Missing or misconfigured Doorbell BAR1");
  err = -ENODEV;
  goto err_disable_pdev;
 }
 priv->p2r_bar[0].size = priv->p2r_bar[1].size = 0;

 if (pci_resource_flags(pdev, BAR_2) & IORESOURCE_MEM_64) {
  if (pci_resource_flags(pdev, BAR_2) & IORESOURCE_PREFETCH)
   tsi_debug(INIT, &pdev->dev,
     "Prefetchable OBW BAR2 will not be used");
  else {
   priv->p2r_bar[0].base = pci_resource_start(pdev, BAR_2);
   priv->p2r_bar[0].size = pci_resource_len(pdev, BAR_2);
  }
 }

 if (pci_resource_flags(pdev, BAR_4) & IORESOURCE_MEM_64) {
  if (pci_resource_flags(pdev, BAR_4) & IORESOURCE_PREFETCH)
   tsi_debug(INIT, &pdev->dev,
     "Prefetchable OBW BAR4 will not be used");
  else {
   priv->p2r_bar[1].base = pci_resource_start(pdev, BAR_4);
   priv->p2r_bar[1].size = pci_resource_len(pdev, BAR_4);
  }
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  tsi_err(&pdev->dev, "Unable to obtain PCI resources");
  goto err_disable_pdev;
 }

 pci_set_master(pdev);

 priv->regs = pci_ioremap_bar(pdev, BAR_0);
 if (!priv->regs) {
  tsi_err(&pdev->dev, "Unable to map device registers space");
  err = -ENOMEM;
  goto err_free_res;
 }

 priv->odb_base = pci_ioremap_bar(pdev, BAR_1);
 if (!priv->odb_base) {
  tsi_err(&pdev->dev, "Unable to map outbound doorbells space");
  err = -ENOMEM;
  goto err_unmap_bars;
 }


 if (pci_set_dma_mask(pdev, DMA_BIT_MASK(64))) {
  err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (err) {
   tsi_err(&pdev->dev, "Unable to set DMA mask");
   goto err_unmap_bars;
  }

  if (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32)))
   tsi_info(&pdev->dev, "Unable to set consistent DMA mask");
 } else {
  err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
  if (err)
   tsi_info(&pdev->dev, "Unable to set consistent DMA mask");
 }

 BUG_ON(!pci_is_pcie(pdev));


 pcie_capability_clear_and_set_word(pdev, PCI_EXP_DEVCTL,
  PCI_EXP_DEVCTL_RELAX_EN | PCI_EXP_DEVCTL_NOSNOOP_EN, 0);


 if (pcie_mrrs >= 0) {
  if (pcie_mrrs <= 5)
   pcie_capability_clear_and_set_word(pdev, PCI_EXP_DEVCTL,
     PCI_EXP_DEVCTL_READRQ, pcie_mrrs << 12);
  else
   tsi_info(&pdev->dev,
     "Invalid MRRS override value %d", pcie_mrrs);
 }


 pcie_capability_clear_and_set_word(pdev, PCI_EXP_DEVCTL2,
        PCI_EXP_DEVCTL2_COMP_TIMEOUT, 0x2);




 pci_write_config_dword(pdev, TSI721_PCIECFG_EPCTL, 0x01);
 pci_write_config_dword(pdev, TSI721_PCIECFG_MSIXTBL,
      TSI721_MSIXTBL_OFFSET);
 pci_write_config_dword(pdev, TSI721_PCIECFG_MSIXPBA,
      TSI721_MSIXPBA_OFFSET);
 pci_write_config_dword(pdev, TSI721_PCIECFG_EPCTL, 0);


 tsi721_disable_ints(priv);

 tsi721_init_pc2sr_mapping(priv);
 tsi721_init_sr2pc_mapping(priv);

 if (tsi721_bdma_maint_init(priv)) {
  tsi_err(&pdev->dev, "BDMA initialization failed");
  err = -ENOMEM;
  goto err_unmap_bars;
 }

 err = tsi721_doorbell_init(priv);
 if (err)
  goto err_free_bdma;

 tsi721_port_write_init(priv);

 err = tsi721_messages_init(priv);
 if (err)
  goto err_free_consistent;

 err = tsi721_setup_mport(priv);
 if (err)
  goto err_free_consistent;

 pci_set_drvdata(pdev, priv);
 tsi721_interrupts_init(priv);

 return 0;

err_free_consistent:
 tsi721_port_write_free(priv);
 tsi721_doorbell_free(priv);
err_free_bdma:
 tsi721_bdma_maint_free(priv);
err_unmap_bars:
 if (priv->regs)
  iounmap(priv->regs);
 if (priv->odb_base)
  iounmap(priv->odb_base);
err_free_res:
 pci_release_regions(pdev);
 pci_clear_master(pdev);
err_disable_pdev:
 pci_disable_device(pdev);
err_clean:
 kfree(priv);
err_exit:
 return err;
}
