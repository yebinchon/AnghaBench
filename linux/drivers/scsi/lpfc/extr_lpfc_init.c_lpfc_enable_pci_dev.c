
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int needs_freset; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;


 int ENODEV ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_DRIVER_NAME ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_request_mem_regions (struct pci_dev*,int ) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_try_set_mwi (struct pci_dev*) ;

__attribute__((used)) static int
lpfc_enable_pci_dev(struct lpfc_hba *phba)
{
 struct pci_dev *pdev;


 if (!phba->pcidev)
  goto out_error;
 else
  pdev = phba->pcidev;

 if (pci_enable_device_mem(pdev))
  goto out_error;

 if (pci_request_mem_regions(pdev, LPFC_DRIVER_NAME))
  goto out_disable_device;

 pci_set_master(pdev);
 pci_try_set_mwi(pdev);
 pci_save_state(pdev);


 if (pci_is_pcie(pdev))
  pdev->needs_freset = 1;

 return 0;

out_disable_device:
 pci_disable_device(pdev);
out_error:
 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "1401 Failed to enable pci device\n");
 return -ENODEV;
}
