
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {TYPE_1__ core; struct hisi_hba* lldd_ha; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct hisi_hba {int timer; } ;
struct Scsi_Host {int dummy; } ;


 int del_timer (int *) ;
 struct sas_ha_struct* dev_get_drvdata (struct device*) ;
 int hisi_sas_debugfs_exit (struct hisi_hba*) ;
 int hisi_sas_free (struct hisi_hba*) ;
 int hisi_sas_kill_tasklets (struct hisi_hba*) ;
 int hisi_sas_v3_destroy_irqs (struct pci_dev*,struct hisi_hba*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int sas_remove_host (struct Scsi_Host*) ;
 int sas_unregister_ha (struct sas_ha_struct*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void hisi_sas_v3_remove(struct pci_dev *pdev)
{
 struct device *dev = &pdev->dev;
 struct sas_ha_struct *sha = dev_get_drvdata(dev);
 struct hisi_hba *hisi_hba = sha->lldd_ha;
 struct Scsi_Host *shost = sha->core.shost;

 hisi_sas_debugfs_exit(hisi_hba);

 if (timer_pending(&hisi_hba->timer))
  del_timer(&hisi_hba->timer);

 sas_unregister_ha(sha);
 sas_remove_host(sha->core.shost);

 hisi_sas_v3_destroy_irqs(pdev, hisi_hba);
 hisi_sas_kill_tasklets(hisi_hba);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 hisi_sas_free(hisi_hba);
 scsi_host_put(shost);
}
