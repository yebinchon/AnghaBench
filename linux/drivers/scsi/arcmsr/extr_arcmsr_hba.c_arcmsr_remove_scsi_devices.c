
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct CommandControlBlock {scalar_t__ startdone; TYPE_1__* pcmd; } ;
struct AdapterControlBlock {int maxFreeCCB; int host; struct CommandControlBlock** pccb_pool; scalar_t__ device_map; } ;
struct TYPE_2__ {int result; int (* scsi_done ) (TYPE_1__*) ;} ;


 scalar_t__ ARCMSR_CCB_START ;
 int ARCMSR_MAX_TARGETID ;
 int ARCMSR_MAX_TARGETLUN ;
 int DID_NO_CONNECT ;
 int arcmsr_pci_unmap_dma (struct CommandControlBlock*) ;
 struct scsi_device* scsi_device_lookup (int ,int ,int,int) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_remove_device (struct scsi_device*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void arcmsr_remove_scsi_devices(struct AdapterControlBlock *acb)
{
 char *acb_dev_map = (char *)acb->device_map;
 int target, lun, i;
 struct scsi_device *psdev;
 struct CommandControlBlock *ccb;
 char temp;

 for (i = 0; i < acb->maxFreeCCB; i++) {
  ccb = acb->pccb_pool[i];
  if (ccb->startdone == ARCMSR_CCB_START) {
   ccb->pcmd->result = DID_NO_CONNECT << 16;
   arcmsr_pci_unmap_dma(ccb);
   ccb->pcmd->scsi_done(ccb->pcmd);
  }
 }
 for (target = 0; target < ARCMSR_MAX_TARGETID; target++) {
  temp = *acb_dev_map;
  if (temp) {
   for (lun = 0; lun < ARCMSR_MAX_TARGETLUN; lun++) {
    if (temp & 1) {
     psdev = scsi_device_lookup(acb->host,
      0, target, lun);
     if (psdev != ((void*)0)) {
      scsi_remove_device(psdev);
      scsi_device_put(psdev);
     }
    }
    temp >>= 1;
   }
   *acb_dev_map = 0;
  }
  acb_dev_map++;
 }
}
