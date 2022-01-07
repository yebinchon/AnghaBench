
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int cfg_poll; scalar_t__ cfg_hba_queue_depth; int pcidev; int ModelDesc; int ModelName; } ;
struct lpfc_adapter_event_header {int subcategory; int event_type; } ;
struct Scsi_Host {int host_lock; scalar_t__ can_queue; } ;
typedef int adapter_event ;


 int DISABLE_FCP_RING_INT ;
 int FC_REG_ADAPTER_EVENT ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LPFC_EVENT_ARRIVAL ;
 int LPFC_NL_VENDOR_ID ;
 int fc_get_event_number () ;
 int fc_host_post_vendor_event (struct Scsi_Host*,int ,int,char*,int ) ;
 int lpfc_get_hba_model_desc (struct lpfc_hba*,int ,int ) ;
 int lpfc_host_attrib_init (struct Scsi_Host*) ;
 int lpfc_poll_start_timer (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 struct Scsi_Host* pci_get_drvdata (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_post_init_setup(struct lpfc_hba *phba)
{
 struct Scsi_Host *shost;
 struct lpfc_adapter_event_header adapter_event;


 lpfc_get_hba_model_desc(phba, phba->ModelName, phba->ModelDesc);





 shost = pci_get_drvdata(phba->pcidev);
 shost->can_queue = phba->cfg_hba_queue_depth - 10;

 lpfc_host_attrib_init(shost);

 if (phba->cfg_poll & DISABLE_FCP_RING_INT) {
  spin_lock_irq(shost->host_lock);
  lpfc_poll_start_timer(phba);
  spin_unlock_irq(shost->host_lock);
 }

 lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
   "0428 Perform SCSI scan\n");

 adapter_event.event_type = FC_REG_ADAPTER_EVENT;
 adapter_event.subcategory = LPFC_EVENT_ARRIVAL;
 fc_host_post_vendor_event(shost, fc_get_event_number(),
      sizeof(adapter_event),
      (char *) &adapter_event,
      LPFC_NL_VENDOR_ID);
 return;
}
