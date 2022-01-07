
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {struct sas_ha_struct* sas_port; struct sas_ha_struct* sas_phy; struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int number_of_intr; scalar_t__ chip_id; int shost; int * tasklet; int irq; struct sas_ha_struct* irq_vector; int list; } ;
struct pci_dev {int msix_cap; } ;
struct TYPE_2__ {int (* chip_soft_rst ) (struct pm8001_hba_info*) ;int (* interrupt_disable ) (struct pm8001_hba_info*,int) ;} ;


 TYPE_1__* PM8001_CHIP_DISP ;
 int PM8001_MAX_MSIX_VEC ;
 scalar_t__ chip_8001 ;
 int free_irq (int ,struct sas_ha_struct*) ;
 int kfree (struct sas_ha_struct*) ;
 int list_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 struct sas_ha_struct* pci_get_drvdata (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int pci_msi_enabled () ;
 int pci_release_regions (struct pci_dev*) ;
 int pm8001_free (struct pm8001_hba_info*) ;
 int sas_remove_host (int ) ;
 int sas_unregister_ha (struct sas_ha_struct*) ;
 int scsi_host_put (int ) ;
 int stub1 (struct pm8001_hba_info*,int) ;
 int stub2 (struct pm8001_hba_info*) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void pm8001_pci_remove(struct pci_dev *pdev)
{
 struct sas_ha_struct *sha = pci_get_drvdata(pdev);
 struct pm8001_hba_info *pm8001_ha;
 int i, j;
 pm8001_ha = sha->lldd_ha;
 sas_unregister_ha(sha);
 sas_remove_host(pm8001_ha->shost);
 list_del(&pm8001_ha->list);
 PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);
 PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);
 free_irq(pm8001_ha->irq, sha);
 scsi_host_put(pm8001_ha->shost);
 pm8001_free(pm8001_ha);
 kfree(sha->sas_phy);
 kfree(sha->sas_port);
 kfree(sha);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
