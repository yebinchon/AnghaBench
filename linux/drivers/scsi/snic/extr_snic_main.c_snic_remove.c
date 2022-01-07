
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snic {int stop_link_events; int in_remove; int shost; int vdev; int list; int snic_lock; } ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_4__ {int snic_list_lock; int event_q; } ;
struct TYPE_3__ {int number; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int SNIC_INFO (char*,int ,int ,int ) ;
 int SNIC_OFFLINE ;
 int flush_workqueue (int ) ;
 int list_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct snic* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int scsi_host_put (int ) ;
 int snic_cleanup (struct snic*) ;
 int snic_clear_intr_mode (struct snic*) ;
 int snic_del_host (int ) ;
 int snic_disc_term (struct snic*) ;
 int snic_free_intr (struct snic*) ;
 int snic_free_vnic_res (struct snic*) ;
 TYPE_2__* snic_glob ;
 int snic_iounmap (struct snic*) ;
 int snic_set_state (struct snic*,int ) ;
 int snic_stats_debugfs_remove (struct snic*) ;
 int snic_tgt_del_all (struct snic*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int svnic_dev_close (int ) ;
 int svnic_dev_notify_unset (int ) ;
 int svnic_dev_unregister (int ) ;

__attribute__((used)) static void
snic_remove(struct pci_dev *pdev)
{
 struct snic *snic = pci_get_drvdata(pdev);
 unsigned long flags;

 if (!snic) {
  SNIC_INFO("sNIC dev: bus %d slot %d fn %d snic inst is null.\n",
     pdev->bus->number, PCI_SLOT(pdev->devfn),
     PCI_FUNC(pdev->devfn));

  return;
 }







 snic_set_state(snic, SNIC_OFFLINE);
 spin_lock_irqsave(&snic->snic_lock, flags);
 snic->stop_link_events = 1;
 spin_unlock_irqrestore(&snic->snic_lock, flags);

 flush_workqueue(snic_glob->event_q);
 snic_disc_term(snic);

 spin_lock_irqsave(&snic->snic_lock, flags);
 snic->in_remove = 1;
 spin_unlock_irqrestore(&snic->snic_lock, flags);






 snic_cleanup(snic);

 spin_lock_irqsave(&snic_glob->snic_list_lock, flags);
 list_del(&snic->list);
 spin_unlock_irqrestore(&snic_glob->snic_list_lock, flags);

 snic_tgt_del_all(snic);



 snic_del_host(snic->shost);

 svnic_dev_notify_unset(snic->vdev);
 snic_free_intr(snic);
 snic_free_vnic_res(snic);
 snic_clear_intr_mode(snic);
 svnic_dev_close(snic->vdev);
 svnic_dev_unregister(snic->vdev);
 snic_iounmap(snic);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));


 scsi_host_put(snic->shost);
}
