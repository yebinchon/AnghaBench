
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int number_of_intr; scalar_t__ chip_id; int name; int * tasklet; int irq; struct sas_ha_struct* irq_vector; int shost; } ;
struct pci_dev {int msix_cap; int dev; int pm_cap; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int (* chip_soft_rst ) (struct pm8001_hba_info*) ;int (* interrupt_disable ) (struct pm8001_hba_info*,int) ;} ;


 int ENODEV ;
 TYPE_1__* PM8001_CHIP_DISP ;
 int PM8001_MAX_MSIX_VEC ;
 scalar_t__ chip_8001 ;
 int dev_err (int *,char*) ;
 int flush_workqueue (int ) ;
 int free_irq (int ,struct sas_ha_struct*) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 struct sas_ha_struct* pci_get_drvdata (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int pci_msi_enabled () ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pm8001_printk (char*,struct pci_dev*,int ,int ) ;
 int pm8001_wq ;
 int sas_suspend_ha (struct sas_ha_struct*) ;
 int scsi_block_requests (int ) ;
 int stub1 (struct pm8001_hba_info*,int) ;
 int stub2 (struct pm8001_hba_info*) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int pm8001_pci_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct sas_ha_struct *sha = pci_get_drvdata(pdev);
 struct pm8001_hba_info *pm8001_ha;
 int i, j;
 u32 device_state;
 pm8001_ha = sha->lldd_ha;
 sas_suspend_ha(sha);
 flush_workqueue(pm8001_wq);
 scsi_block_requests(pm8001_ha->shost);
 if (!pdev->pm_cap) {
  dev_err(&pdev->dev, " PCI PM not supported\n");
  return -ENODEV;
 }
 PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);
 PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);







 free_irq(pm8001_ha->irq, sha);
 device_state = pci_choose_state(pdev, state);
 pm8001_printk("pdev=0x%p, slot=%s, entering "
        "operating state [D%d]\n", pdev,
        pm8001_ha->name, device_state);
 pci_save_state(pdev);
 pci_disable_device(pdev);
 pci_set_power_state(pdev, device_state);
 return 0;
}
