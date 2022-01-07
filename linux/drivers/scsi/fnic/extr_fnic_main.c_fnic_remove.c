
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct fnic {int stop_rx_link_events; int in_remove; int vdev; struct fc_lport* lport; int list; int tx_queue; int frame_queue; int ctlr; int fnic_lock; int fip_frame_queue; int fip_timer; TYPE_1__ config; int notify_timer; } ;
struct fc_lport {int host; } ;


 int BUG_ON (int) ;
 int VFCF_FIP_CAPABLE ;
 scalar_t__ VNIC_DEV_INTR_MODE_MSI ;
 int del_timer_sync (int *) ;
 int fc_exch_mgr_free (struct fc_lport*) ;
 int fc_fabric_logoff (struct fc_lport*) ;
 int fc_lport_destroy (struct fc_lport*) ;
 int fc_remove_host (int ) ;
 int fcoe_ctlr_destroy (int *) ;
 int flush_workqueue (int ) ;
 int fnic_cleanup (struct fnic*) ;
 int fnic_clear_intr_mode (struct fnic*) ;
 int fnic_event_queue ;
 int fnic_fcoe_evlist_free (struct fnic*) ;
 int fnic_fcoe_reset_vlans (struct fnic*) ;
 int fnic_free_intr (struct fnic*) ;
 int fnic_free_vnic_resources (struct fnic*) ;
 int fnic_iounmap (struct fnic*) ;
 int fnic_list_lock ;
 int fnic_stats_debugfs_remove (struct fnic*) ;
 int list_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct fnic* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int skb_queue_empty (int *) ;
 int skb_queue_purge (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vnic_dev_close (int ) ;
 scalar_t__ vnic_dev_get_intr_mode (int ) ;
 int vnic_dev_notify_unset (int ) ;
 int vnic_dev_unregister (int ) ;

__attribute__((used)) static void fnic_remove(struct pci_dev *pdev)
{
 struct fnic *fnic = pci_get_drvdata(pdev);
 struct fc_lport *lp = fnic->lport;
 unsigned long flags;







 spin_lock_irqsave(&fnic->fnic_lock, flags);
 fnic->stop_rx_link_events = 1;
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 if (vnic_dev_get_intr_mode(fnic->vdev) == VNIC_DEV_INTR_MODE_MSI)
  del_timer_sync(&fnic->notify_timer);





 flush_workqueue(fnic_event_queue);
 skb_queue_purge(&fnic->frame_queue);
 skb_queue_purge(&fnic->tx_queue);

 if (fnic->config.flags & VFCF_FIP_CAPABLE) {
  del_timer_sync(&fnic->fip_timer);
  skb_queue_purge(&fnic->fip_frame_queue);
  fnic_fcoe_reset_vlans(fnic);
  fnic_fcoe_evlist_free(fnic);
 }






 fc_fabric_logoff(fnic->lport);

 spin_lock_irqsave(&fnic->fnic_lock, flags);
 fnic->in_remove = 1;
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 fcoe_ctlr_destroy(&fnic->ctlr);
 fc_lport_destroy(lp);
 fnic_stats_debugfs_remove(fnic);






 fnic_cleanup(fnic);

 BUG_ON(!skb_queue_empty(&fnic->frame_queue));
 BUG_ON(!skb_queue_empty(&fnic->tx_queue));

 spin_lock_irqsave(&fnic_list_lock, flags);
 list_del(&fnic->list);
 spin_unlock_irqrestore(&fnic_list_lock, flags);

 fc_remove_host(fnic->lport->host);
 scsi_remove_host(fnic->lport->host);
 fc_exch_mgr_free(fnic->lport);
 vnic_dev_notify_unset(fnic->vdev);
 fnic_free_intr(fnic);
 fnic_free_vnic_resources(fnic);
 fnic_clear_intr_mode(fnic);
 vnic_dev_close(fnic->vdev);
 vnic_dev_unregister(fnic->vdev);
 fnic_iounmap(fnic);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 scsi_host_put(lp->host);
}
