
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct pci_device_id {int driver_data; } ;
struct pci_dev {int devfn; int dev; TYPE_1__* bus; } ;
struct Scsi_Host {int max_cmd_len; int unique_id; int this_id; scalar_t__ cmd_per_lun; scalar_t__ can_queue; int max_id; int max_lun; scalar_t__ hostdata; } ;
struct AdapterControlBlock {int acb_flags; int arcmsr_do_message_isr_bh; int eternal_timer; int refresh_timer; int ccb_free_list; int wqbuffer_lock; int rqbuffer_lock; int doneq_lock; int postq_lock; int ccblist_lock; int eh_lock; struct Scsi_Host* host; int adapter_type; struct pci_dev* pdev; } ;
struct TYPE_2__ {int number; } ;


 int ACB_F_MESSAGE_RQBUFFER_CLEARED ;
 int ACB_F_MESSAGE_WQBUFFER_CLEARED ;
 int ACB_F_MESSAGE_WQBUFFER_READED ;
 int ACB_F_SCSISTOPADAPTER ;
 scalar_t__ ARCMSR_DEFAULT_CMD_PERLUN ;
 scalar_t__ ARCMSR_DEFAULT_OUTSTANDING_CMD ;
 scalar_t__ ARCMSR_MAX_CMD_PERLUN ;
 scalar_t__ ARCMSR_MAX_OUTSTANDING_CMD ;
 int ARCMSR_MAX_TARGETID ;
 int ARCMSR_MAX_TARGETLUN ;
 scalar_t__ ARCMSR_MIN_CMD_PERLUN ;
 scalar_t__ ARCMSR_MIN_OUTSTANDING_CMD ;
 int ARCMSR_SCSI_INITIATOR_ID ;
 int ENODEV ;
 scalar_t__ FAILED ;
 int INIT_LIST_HEAD (int *) ;
 int arcmsr_alloc_ccb_pool (struct AdapterControlBlock*) ;
 int arcmsr_alloc_io_queue (struct AdapterControlBlock*) ;
 scalar_t__ arcmsr_alloc_sysfs_attr (struct AdapterControlBlock*) ;
 int arcmsr_flush_adapter_cache (struct AdapterControlBlock*) ;
 int arcmsr_free_ccb_pool (struct AdapterControlBlock*) ;
 int arcmsr_free_io_queue (struct AdapterControlBlock*) ;
 int arcmsr_free_irq (struct pci_dev*,struct AdapterControlBlock*) ;
 int arcmsr_get_firmware_spec (struct AdapterControlBlock*) ;
 int arcmsr_init_get_devmap_timer (struct AdapterControlBlock*) ;
 int arcmsr_init_set_datetime_timer (struct AdapterControlBlock*) ;
 int arcmsr_iop_init (struct AdapterControlBlock*) ;
 int arcmsr_remap_pciregion (struct AdapterControlBlock*) ;
 scalar_t__ arcmsr_request_irq (struct pci_dev*,struct AdapterControlBlock*) ;
 int arcmsr_scsi_host_template ;
 scalar_t__ arcmsr_set_dma_mask (struct AdapterControlBlock*) ;
 int arcmsr_stop_adapter_bgrb (struct AdapterControlBlock*) ;
 int arcmsr_unmap_pciregion (struct AdapterControlBlock*) ;
 scalar_t__ cmd_per_lun ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 scalar_t__ host_can_queue ;
 int init_waitqueue_head (int *) ;
 int memset (struct AdapterControlBlock*,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_set_drvdata (struct pci_dev*,struct Scsi_Host*) ;
 int pci_set_master (struct pci_dev*) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 scalar_t__ set_date_time ;
 int spin_lock_init (int *) ;
 int wait_q ;

__attribute__((used)) static int arcmsr_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct Scsi_Host *host;
 struct AdapterControlBlock *acb;
 uint8_t bus,dev_fun;
 int error;
 error = pci_enable_device(pdev);
 if(error){
  return -ENODEV;
 }
 host = scsi_host_alloc(&arcmsr_scsi_host_template, sizeof(struct AdapterControlBlock));
 if(!host){
      goto pci_disable_dev;
 }
 init_waitqueue_head(&wait_q);
 bus = pdev->bus->number;
 dev_fun = pdev->devfn;
 acb = (struct AdapterControlBlock *) host->hostdata;
 memset(acb,0,sizeof(struct AdapterControlBlock));
 acb->pdev = pdev;
 acb->adapter_type = id->driver_data;
 if (arcmsr_set_dma_mask(acb))
  goto scsi_host_release;
 acb->host = host;
 host->max_lun = ARCMSR_MAX_TARGETLUN;
 host->max_id = ARCMSR_MAX_TARGETID;
 host->max_cmd_len = 16;
 if ((host_can_queue < ARCMSR_MIN_OUTSTANDING_CMD) || (host_can_queue > ARCMSR_MAX_OUTSTANDING_CMD))
  host_can_queue = ARCMSR_DEFAULT_OUTSTANDING_CMD;
 host->can_queue = host_can_queue;
 if ((cmd_per_lun < ARCMSR_MIN_CMD_PERLUN) || (cmd_per_lun > ARCMSR_MAX_CMD_PERLUN))
  cmd_per_lun = ARCMSR_DEFAULT_CMD_PERLUN;
 host->cmd_per_lun = cmd_per_lun;
 host->this_id = ARCMSR_SCSI_INITIATOR_ID;
 host->unique_id = (bus << 8) | dev_fun;
 pci_set_drvdata(pdev, host);
 pci_set_master(pdev);
 error = pci_request_regions(pdev, "arcmsr");
 if(error){
  goto scsi_host_release;
 }
 spin_lock_init(&acb->eh_lock);
 spin_lock_init(&acb->ccblist_lock);
 spin_lock_init(&acb->postq_lock);
 spin_lock_init(&acb->doneq_lock);
 spin_lock_init(&acb->rqbuffer_lock);
 spin_lock_init(&acb->wqbuffer_lock);
 acb->acb_flags |= (ACB_F_MESSAGE_WQBUFFER_CLEARED |
   ACB_F_MESSAGE_RQBUFFER_CLEARED |
   ACB_F_MESSAGE_WQBUFFER_READED);
 acb->acb_flags &= ~ACB_F_SCSISTOPADAPTER;
 INIT_LIST_HEAD(&acb->ccb_free_list);
 error = arcmsr_remap_pciregion(acb);
 if(!error){
  goto pci_release_regs;
 }
 error = arcmsr_alloc_io_queue(acb);
 if (!error)
  goto unmap_pci_region;
 error = arcmsr_get_firmware_spec(acb);
 if(!error){
  goto free_hbb_mu;
 }
 arcmsr_free_io_queue(acb);
 error = arcmsr_alloc_ccb_pool(acb);
 if(error){
  goto unmap_pci_region;
 }
 error = scsi_add_host(host, &pdev->dev);
 if(error){
  goto free_ccb_pool;
 }
 if (arcmsr_request_irq(pdev, acb) == FAILED)
  goto scsi_host_remove;
 arcmsr_iop_init(acb);
 arcmsr_init_get_devmap_timer(acb);
 if (set_date_time)
  arcmsr_init_set_datetime_timer(acb);
 if(arcmsr_alloc_sysfs_attr(acb))
  goto out_free_sysfs;
 scsi_scan_host(host);
 return 0;
out_free_sysfs:
 if (set_date_time)
  del_timer_sync(&acb->refresh_timer);
 del_timer_sync(&acb->eternal_timer);
 flush_work(&acb->arcmsr_do_message_isr_bh);
 arcmsr_stop_adapter_bgrb(acb);
 arcmsr_flush_adapter_cache(acb);
 arcmsr_free_irq(pdev, acb);
scsi_host_remove:
 scsi_remove_host(host);
free_ccb_pool:
 arcmsr_free_ccb_pool(acb);
 goto unmap_pci_region;
free_hbb_mu:
 arcmsr_free_io_queue(acb);
unmap_pci_region:
 arcmsr_unmap_pciregion(acb);
pci_release_regs:
 pci_release_regions(pdev);
scsi_host_release:
 scsi_host_put(host);
pci_disable_dev:
 pci_disable_device(pdev);
 return -ENODEV;
}
