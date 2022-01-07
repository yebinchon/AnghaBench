
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct mvumi_hba {TYPE_2__* pdev; TYPE_1__* instancet; struct Scsi_Host* shost; int * dm_thread; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int (* disable_intr ) (struct mvumi_hba*) ;} ;


 int dev_dbg (int *,char*) ;
 int free_irq (int ,struct mvumi_hba*) ;
 int kthread_stop (int *) ;
 int mvumi_detach_devices (struct mvumi_hba*) ;
 int mvumi_flush_cache (struct mvumi_hba*) ;
 int mvumi_release_fw (struct mvumi_hba*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct mvumi_hba* pci_get_drvdata (struct pci_dev*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int stub1 (struct mvumi_hba*) ;

__attribute__((used)) static void mvumi_detach_one(struct pci_dev *pdev)
{
 struct Scsi_Host *host;
 struct mvumi_hba *mhba;

 mhba = pci_get_drvdata(pdev);
 if (mhba->dm_thread) {
  kthread_stop(mhba->dm_thread);
  mhba->dm_thread = ((void*)0);
 }

 mvumi_detach_devices(mhba);
 host = mhba->shost;
 scsi_remove_host(mhba->shost);
 mvumi_flush_cache(mhba);

 mhba->instancet->disable_intr(mhba);
 free_irq(mhba->pdev->irq, mhba);
 mvumi_release_fw(mhba);
 scsi_host_put(host);
 pci_disable_device(pdev);
 dev_dbg(&pdev->dev, "driver is removed!\n");
}
