
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct esas2r_adapter {TYPE_2__* host; int flags; int flags2; TYPE_4__* pcid; int * uncached; scalar_t__ uncached_phys; scalar_t__ uncached_size; int fw_event_lock; struct workqueue_struct* fw_event_q; int * local_atto_ioctl; int * fs_api_buffer; scalar_t__ ppfs_api_buffer; scalar_t__ fs_api_buffer_size; int * vda_buffer; scalar_t__ ppvda_buffer; } ;
typedef int dma_addr_t ;
struct TYPE_7__ {int counter; } ;
struct TYPE_9__ {int dev; TYPE_1__ enable_cnt; int pin; int irq; int msi_enabled; int msix_enabled; } ;
struct TYPE_8__ {int shost_gendev; } ;


 int AF2_INIT_DONE ;
 int AF_DEGRADED_MODE ;
 int ESAS2R_LOG_INFO ;
 scalar_t__ VDA_MAX_BUFFER_SIZE ;
 int clear_bit (int ,int *) ;
 int destroy_workqueue (struct workqueue_struct*) ;
 int dma_free_coherent (int *,size_t,int *,int ) ;
 int esas2r_adapter_power_down (struct esas2r_adapter*,int ) ;
 struct esas2r_adapter** esas2r_adapters ;
 int * esas2r_buffered_ioctl ;
 int esas2r_buffered_ioctl_addr ;
 TYPE_4__* esas2r_buffered_ioctl_pcid ;
 scalar_t__ esas2r_buffered_ioctl_size ;
 int esas2r_debug (char*,...) ;
 int esas2r_fw_event_off (struct esas2r_adapter*) ;
 int esas2r_log_dev (int ,int *,char*,...) ;
 int kfree (int *) ;
 int pci_disable_device (TYPE_4__*) ;
 int pci_set_drvdata (TYPE_4__*,int *) ;
 int scsi_host_put (TYPE_2__*) ;
 int scsi_remove_host (TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void esas2r_kill_adapter(int i)
{
 struct esas2r_adapter *a = esas2r_adapters[i];

 if (a) {
  unsigned long flags;
  struct workqueue_struct *wq;
  esas2r_debug("killing adapter %p [%d] ", a, i);
  esas2r_fw_event_off(a);
  esas2r_adapter_power_down(a, 0);
  if (esas2r_buffered_ioctl &&
      (a->pcid == esas2r_buffered_ioctl_pcid)) {
   dma_free_coherent(&a->pcid->dev,
       (size_t)esas2r_buffered_ioctl_size,
       esas2r_buffered_ioctl,
       esas2r_buffered_ioctl_addr);
   esas2r_buffered_ioctl = ((void*)0);
  }

  if (a->vda_buffer) {
   dma_free_coherent(&a->pcid->dev,
       (size_t)VDA_MAX_BUFFER_SIZE,
       a->vda_buffer,
       (dma_addr_t)a->ppvda_buffer);
   a->vda_buffer = ((void*)0);
  }
  if (a->fs_api_buffer) {
   dma_free_coherent(&a->pcid->dev,
       (size_t)a->fs_api_buffer_size,
       a->fs_api_buffer,
       (dma_addr_t)a->ppfs_api_buffer);
   a->fs_api_buffer = ((void*)0);
  }

  kfree(a->local_atto_ioctl);
  a->local_atto_ioctl = ((void*)0);

  spin_lock_irqsave(&a->fw_event_lock, flags);
  wq = a->fw_event_q;
  a->fw_event_q = ((void*)0);
  spin_unlock_irqrestore(&a->fw_event_lock, flags);
  if (wq)
   destroy_workqueue(wq);

  if (a->uncached) {
   dma_free_coherent(&a->pcid->dev,
       (size_t)a->uncached_size,
       a->uncached,
       (dma_addr_t)a->uncached_phys);
   a->uncached = ((void*)0);
   esas2r_debug("uncached area freed");
  }

  esas2r_log_dev(ESAS2R_LOG_INFO,
          &(a->pcid->dev),
          "pci_disable_device() called.  msix_enabled: %d "
          "msi_enabled: %d irq: %d pin: %d",
          a->pcid->msix_enabled,
          a->pcid->msi_enabled,
          a->pcid->irq,
          a->pcid->pin);

  esas2r_log_dev(ESAS2R_LOG_INFO,
          &(a->pcid->dev),
          "before pci_disable_device() enable_cnt: %d",
          a->pcid->enable_cnt.counter);

  pci_disable_device(a->pcid);
  esas2r_log_dev(ESAS2R_LOG_INFO,
          &(a->pcid->dev),
          "after pci_disable_device() enable_cnt: %d",
          a->pcid->enable_cnt.counter);

  esas2r_log_dev(ESAS2R_LOG_INFO,
          &(a->pcid->dev),
          "pci_set_drv_data(%p, NULL) called",
          a->pcid);

  pci_set_drvdata(a->pcid, ((void*)0));
  esas2r_adapters[i] = ((void*)0);

  if (test_bit(AF2_INIT_DONE, &a->flags2)) {
   clear_bit(AF2_INIT_DONE, &a->flags2);

   set_bit(AF_DEGRADED_MODE, &a->flags);

   esas2r_log_dev(ESAS2R_LOG_INFO,
           &(a->host->shost_gendev),
           "scsi_remove_host() called");

   scsi_remove_host(a->host);

   esas2r_log_dev(ESAS2R_LOG_INFO,
           &(a->host->shost_gendev),
           "scsi_host_put() called");

   scsi_host_put(a->host);
  }
 }
}
