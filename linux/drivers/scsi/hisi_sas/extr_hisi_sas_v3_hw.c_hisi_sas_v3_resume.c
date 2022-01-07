
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {struct hisi_hba* lldd_ha; } ;
struct pci_dev {int current_state; } ;
struct hisi_hba {int flags; TYPE_1__* hw; struct device* dev; struct Scsi_Host* shost; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int pci_power_t ;
struct TYPE_2__ {int (* phys_init ) (struct hisi_hba*) ;} ;


 int HISI_SAS_REJECT_CMD_BIT ;
 int HISI_SAS_RESET_BIT ;
 int PCI_D0 ;
 int clear_bit (int ,int *) ;
 int dev_err (struct device*,char*,unsigned int) ;
 int dev_warn (struct device*,char*,int ) ;
 unsigned int hw_init_v3_hw (struct hisi_hba*) ;
 int pci_disable_device (struct pci_dev*) ;
 unsigned int pci_enable_device (struct pci_dev*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct sas_ha_struct* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int sas_prep_resume_ha (struct sas_ha_struct*) ;
 int sas_resume_ha (struct sas_ha_struct*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int scsi_unblock_requests (struct Scsi_Host*) ;
 int stub1 (struct hisi_hba*) ;

__attribute__((used)) static int hisi_sas_v3_resume(struct pci_dev *pdev)
{
 struct sas_ha_struct *sha = pci_get_drvdata(pdev);
 struct hisi_hba *hisi_hba = sha->lldd_ha;
 struct Scsi_Host *shost = hisi_hba->shost;
 struct device *dev = hisi_hba->dev;
 unsigned int rc;
 pci_power_t device_state = pdev->current_state;

 dev_warn(dev, "resuming from operating state [D%d]\n",
   device_state);
 pci_set_power_state(pdev, PCI_D0);
 pci_enable_wake(pdev, PCI_D0, 0);
 pci_restore_state(pdev);
 rc = pci_enable_device(pdev);
 if (rc) {
  dev_err(dev, "enable device failed during resume (%d)\n", rc);
  return rc;
 }

 pci_set_master(pdev);
 scsi_unblock_requests(shost);
 clear_bit(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);

 sas_prep_resume_ha(sha);
 rc = hw_init_v3_hw(hisi_hba);
 if (rc) {
  scsi_remove_host(shost);
  pci_disable_device(pdev);
 }
 hisi_hba->hw->phys_init(hisi_hba);
 sas_resume_ha(sha);
 clear_bit(HISI_SAS_RESET_BIT, &hisi_hba->flags);

 return 0;
}
