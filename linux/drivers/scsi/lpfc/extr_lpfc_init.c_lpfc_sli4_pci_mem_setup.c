
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {int word0; } ;
struct TYPE_3__ {void* conf_regs_memmap_p; void* ctrl_regs_memmap_p; void* drbl_regs_memmap_p; int sli4_write_cq_db; int sli4_write_eq_db; int sli4_eq_clr_intr; void* dpp_regs_memmap_p; TYPE_2__ sli_intf; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; void* pci_bar4_memmap_p; void* pci_bar2_map; void* pci_bar2_memmap_p; void* pci_bar1_map; void* pci_bar0_map; void* pci_bar0_memmap_p; struct pci_dev* pcidev; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_SLI_INTF ;



 scalar_t__ LPFC_SLI_INTF_VALID ;
 int LPFC_VF0 ;
 int PCI_64BIT_BAR0 ;
 int PCI_64BIT_BAR2 ;
 int PCI_64BIT_BAR4 ;
 scalar_t__ bf_get (int ,TYPE_2__*) ;
 int dev_err (int *,char*) ;
 int dev_printk (int ,int *,char*) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 void* ioremap (void*,unsigned long) ;
 int iounmap (void*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ) ;
 int lpfc_sli4_bar0_register_memmap (struct lpfc_hba*,int) ;
 int lpfc_sli4_bar1_register_memmap (struct lpfc_hba*,int) ;
 int lpfc_sli4_bar2_register_memmap (struct lpfc_hba*,int ) ;
 int lpfc_sli4_eq_clr_intr ;
 int lpfc_sli4_if6_eq_clr_intr ;
 int lpfc_sli4_if6_write_cq_db ;
 int lpfc_sli4_if6_write_eq_db ;
 int lpfc_sli4_write_cq_db ;
 int lpfc_sli4_write_eq_db ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sli_intf_valid ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int ,int *) ;
 unsigned long pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static int
lpfc_sli4_pci_mem_setup(struct lpfc_hba *phba)
{
 struct pci_dev *pdev = phba->pcidev;
 unsigned long bar0map_len, bar1map_len, bar2map_len;
 int error;
 uint32_t if_type;

 if (!pdev)
  return -ENODEV;


 error = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 if (error)
  error = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (error)
  return error;





 if (pci_read_config_dword(pdev, LPFC_SLI_INTF,
      &phba->sli4_hba.sli_intf.word0)) {
  return -ENODEV;
 }


 if (bf_get(lpfc_sli_intf_valid, &phba->sli4_hba.sli_intf) !=
     LPFC_SLI_INTF_VALID) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2894 SLI_INTF reg contents invalid "
    "sli_intf reg 0x%x\n",
    phba->sli4_hba.sli_intf.word0);
  return -ENODEV;
 }

 if_type = bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);






 if (pci_resource_start(pdev, PCI_64BIT_BAR0)) {
  phba->pci_bar0_map = pci_resource_start(pdev, PCI_64BIT_BAR0);
  bar0map_len = pci_resource_len(pdev, PCI_64BIT_BAR0);





  phba->sli4_hba.conf_regs_memmap_p =
   ioremap(phba->pci_bar0_map, bar0map_len);
  if (!phba->sli4_hba.conf_regs_memmap_p) {
   dev_printk(KERN_ERR, &pdev->dev,
       "ioremap failed for SLI4 PCI config "
       "registers.\n");
   return -ENODEV;
  }
  phba->pci_bar0_memmap_p = phba->sli4_hba.conf_regs_memmap_p;

  lpfc_sli4_bar0_register_memmap(phba, if_type);
 } else {
  phba->pci_bar0_map = pci_resource_start(pdev, 1);
  bar0map_len = pci_resource_len(pdev, 1);
  if (if_type >= 129) {
   dev_printk(KERN_ERR, &pdev->dev,
      "FATAL - No BAR0 mapping for SLI4, if_type 2\n");
   return -ENODEV;
  }
  phba->sli4_hba.conf_regs_memmap_p =
    ioremap(phba->pci_bar0_map, bar0map_len);
  if (!phba->sli4_hba.conf_regs_memmap_p) {
   dev_printk(KERN_ERR, &pdev->dev,
    "ioremap failed for SLI4 PCI config "
    "registers.\n");
   return -ENODEV;
  }
  lpfc_sli4_bar0_register_memmap(phba, if_type);
 }

 if (if_type == 130) {
  if (pci_resource_start(pdev, PCI_64BIT_BAR2)) {




   phba->pci_bar1_map = pci_resource_start(pdev,
        PCI_64BIT_BAR2);
   bar1map_len = pci_resource_len(pdev, PCI_64BIT_BAR2);
   phba->sli4_hba.ctrl_regs_memmap_p =
     ioremap(phba->pci_bar1_map,
      bar1map_len);
   if (!phba->sli4_hba.ctrl_regs_memmap_p) {
    dev_err(&pdev->dev,
        "ioremap failed for SLI4 HBA "
         "control registers.\n");
    error = -ENOMEM;
    goto out_iounmap_conf;
   }
   phba->pci_bar2_memmap_p =
      phba->sli4_hba.ctrl_regs_memmap_p;
   lpfc_sli4_bar1_register_memmap(phba, if_type);
  } else {
   error = -ENOMEM;
   goto out_iounmap_conf;
  }
 }

 if ((if_type == 128) &&
     (pci_resource_start(pdev, PCI_64BIT_BAR2))) {




  phba->pci_bar1_map = pci_resource_start(pdev, PCI_64BIT_BAR2);
  bar1map_len = pci_resource_len(pdev, PCI_64BIT_BAR2);
  phba->sli4_hba.drbl_regs_memmap_p =
    ioremap(phba->pci_bar1_map, bar1map_len);
  if (!phba->sli4_hba.drbl_regs_memmap_p) {
   dev_err(&pdev->dev,
      "ioremap failed for SLI4 HBA doorbell registers.\n");
   error = -ENOMEM;
   goto out_iounmap_conf;
  }
  phba->pci_bar2_memmap_p = phba->sli4_hba.drbl_regs_memmap_p;
  lpfc_sli4_bar1_register_memmap(phba, if_type);
 }

 if (if_type == 130) {
  if (pci_resource_start(pdev, PCI_64BIT_BAR4)) {




   phba->pci_bar2_map = pci_resource_start(pdev,
        PCI_64BIT_BAR4);
   bar2map_len = pci_resource_len(pdev, PCI_64BIT_BAR4);
   phba->sli4_hba.drbl_regs_memmap_p =
     ioremap(phba->pci_bar2_map,
      bar2map_len);
   if (!phba->sli4_hba.drbl_regs_memmap_p) {
    dev_err(&pdev->dev,
        "ioremap failed for SLI4 HBA"
        " doorbell registers.\n");
    error = -ENOMEM;
    goto out_iounmap_ctrl;
   }
   phba->pci_bar4_memmap_p =
     phba->sli4_hba.drbl_regs_memmap_p;
   error = lpfc_sli4_bar2_register_memmap(phba, LPFC_VF0);
   if (error)
    goto out_iounmap_all;
  } else {
   error = -ENOMEM;
   goto out_iounmap_all;
  }
 }

 if (if_type == 128 &&
     pci_resource_start(pdev, PCI_64BIT_BAR4)) {




  phba->pci_bar2_map = pci_resource_start(pdev, PCI_64BIT_BAR4);
  bar2map_len = pci_resource_len(pdev, PCI_64BIT_BAR4);
  phba->sli4_hba.dpp_regs_memmap_p =
    ioremap(phba->pci_bar2_map, bar2map_len);
  if (!phba->sli4_hba.dpp_regs_memmap_p) {
   dev_err(&pdev->dev,
      "ioremap failed for SLI4 HBA dpp registers.\n");
   error = -ENOMEM;
   goto out_iounmap_ctrl;
  }
  phba->pci_bar4_memmap_p = phba->sli4_hba.dpp_regs_memmap_p;
 }


 switch (if_type) {
 case 130:
 case 129:
  phba->sli4_hba.sli4_eq_clr_intr = lpfc_sli4_eq_clr_intr;
  phba->sli4_hba.sli4_write_eq_db = lpfc_sli4_write_eq_db;
  phba->sli4_hba.sli4_write_cq_db = lpfc_sli4_write_cq_db;
  break;
 case 128:
  phba->sli4_hba.sli4_eq_clr_intr = lpfc_sli4_if6_eq_clr_intr;
  phba->sli4_hba.sli4_write_eq_db = lpfc_sli4_if6_write_eq_db;
  phba->sli4_hba.sli4_write_cq_db = lpfc_sli4_if6_write_cq_db;
  break;
 default:
  break;
 }

 return 0;

out_iounmap_all:
 iounmap(phba->sli4_hba.drbl_regs_memmap_p);
out_iounmap_ctrl:
 iounmap(phba->sli4_hba.ctrl_regs_memmap_p);
out_iounmap_conf:
 iounmap(phba->sli4_hba.conf_regs_memmap_p);

 return error;
}
