
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {int result; TYPE_2__* device; } ;
struct ScsiReqBlk {int list; } ;
struct DeviceCtlBlk {int srb_going_list; int srb_waiting_list; } ;
struct AdapterCtlBlk {int srb_free_list; } ;
struct TYPE_4__ {scalar_t__ lun; int id; TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int DID_ABORT ;
 int FAILED ;
 int KERN_DEBUG ;
 int KERN_INFO ;
 int SUCCESS ;
 int dprintkl (int ,char*,...) ;
 struct ScsiReqBlk* find_cmd (struct scsi_cmnd*,int *) ;
 struct DeviceCtlBlk* find_dcb (struct AdapterCtlBlk*,int ,scalar_t__) ;
 int free_tag (struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int pci_unmap_srb (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;
 int pci_unmap_srb_sense (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;

__attribute__((used)) static int dc395x_eh_abort(struct scsi_cmnd *cmd)
{




 struct AdapterCtlBlk *acb =
     (struct AdapterCtlBlk *)cmd->device->host->hostdata;
 struct DeviceCtlBlk *dcb;
 struct ScsiReqBlk *srb;
 dprintkl(KERN_INFO, "eh_abort: (0x%p) target=<%02i-%i> cmd=%p\n",
  cmd, cmd->device->id, (u8)cmd->device->lun, cmd);

 dcb = find_dcb(acb, cmd->device->id, cmd->device->lun);
 if (!dcb) {
  dprintkl(KERN_DEBUG, "eh_abort: No such device\n");
  return FAILED;
 }

 srb = find_cmd(cmd, &dcb->srb_waiting_list);
 if (srb) {
  list_del(&srb->list);
  pci_unmap_srb_sense(acb, srb);
  pci_unmap_srb(acb, srb);
  free_tag(dcb, srb);
  list_add_tail(&srb->list, &acb->srb_free_list);
  dprintkl(KERN_DEBUG, "eh_abort: Command was waiting\n");
  cmd->result = DID_ABORT << 16;
  return SUCCESS;
 }
 srb = find_cmd(cmd, &dcb->srb_going_list);
 if (srb) {
  dprintkl(KERN_DEBUG, "eh_abort: Command in progress\n");

 } else {
  dprintkl(KERN_DEBUG, "eh_abort: Command not found\n");
 }
 return FAILED;
}
