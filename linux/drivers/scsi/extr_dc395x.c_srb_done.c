
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ this_residual; scalar_t__ buffers_residual; } ;
struct scsi_cmnd {int sc_data_direction; int* sense_buffer; scalar_t__* cmnd; int result; scalar_t__ underflow; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; TYPE_1__ SCp; } ;
struct scatterlist {int dummy; } ;
struct ScsiReqBlk {int target_status; int flag; int adapter_status; scalar_t__ total_xfer_length; int status; int list; int end_message; int sg_count; int sg_index; struct scsi_cmnd* cmd; } ;
struct ScsiInqData {int Vers; int Flags; } ;
struct DeviceCtlBlk {int max_command; int init_tcq_flag; int inquiry7; int srb_waiting_list; int target_lun; int target_id; int srb_going_list; } ;
struct AdapterCtlBlk {int srb_free_list; struct ScsiReqBlk* tmp_srb; int scan_devices; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {scalar_t__ lun; int id; } ;


 int AUTO_REQSENSE ;
 int CHECK_CONDITION ;
 int DBG_0 ;
 int DBG_1 ;
 int DBG_KG ;
 int DBG_SG ;
 int DID_BAD_TARGET ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_PARITY ;
 int DRIVER_SENSE ;

 int HZ ;
 int H_OVER_UNDER_RUN ;
 int H_SEL_TIMEOUT ;

 scalar_t__ INQUIRY ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int KERN_INFO ;

 void* MK_RES_LNX (int ,int,int ,int) ;

 int PARITY_ERROR ;
 int PCI_DMA_NONE ;
 int QUEUE_FULL ;
 int RES_DID ;
 int SCSI_STAT_SEL_TIMEOUT ;
 int SET_RES_DID (int,int) ;
 int SET_RES_MSG (int,int ) ;
 int SET_RES_TARGET (int,int) ;

 int add_dev (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiInqData*) ;
 scalar_t__ debug_enabled (int ) ;
 int dprintkdbg (int ,char*,...) ;
 int dprintkl (int ,char*,...) ;
 int free_tag (struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int list_move (int *,int *) ;
 int list_move_tail (int *,int *) ;
 scalar_t__ list_size (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pci_unmap_srb (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;
 int pci_unmap_srb_sense (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;
 int printk (char*,int,unsigned int,...) ;
 int request_sense (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 unsigned char* scsi_kmap_atomic_sg (struct scatterlist*,int ,size_t*,size_t*) ;
 int scsi_kunmap_atomic_sg (unsigned char*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 struct scatterlist* scsi_sglist (struct scsi_cmnd*) ;
 int scsi_sgtalbe (struct scsi_cmnd*) ;
 int status_byte (int) ;
 int stub1 (struct scsi_cmnd*) ;
 int waiting_process_next (struct AdapterCtlBlk*) ;
 int waiting_set_timer (struct AdapterCtlBlk*,int) ;

__attribute__((used)) static void srb_done(struct AdapterCtlBlk *acb, struct DeviceCtlBlk *dcb,
  struct ScsiReqBlk *srb)
{
 u8 tempcnt, status;
 struct scsi_cmnd *cmd = srb->cmd;
 enum dma_data_direction dir = cmd->sc_data_direction;
 int ckc_only = 1;

 dprintkdbg(DBG_1, "srb_done: (0x%p) <%02i-%i>\n", srb->cmd,
  srb->cmd->device->id, (u8)srb->cmd->device->lun);
 dprintkdbg(DBG_SG, "srb_done: srb=%p sg=%i(%i/%i) buf=%p\n",
     srb, scsi_sg_count(cmd), srb->sg_index, srb->sg_count,
     scsi_sgtalbe(cmd));
 status = srb->target_status;
 if (srb->flag & AUTO_REQSENSE) {
  dprintkdbg(DBG_0, "srb_done: AUTO_REQSENSE1\n");
  pci_unmap_srb_sense(acb, srb);



  srb->flag &= ~AUTO_REQSENSE;
  srb->adapter_status = 0;
  srb->target_status = CHECK_CONDITION << 1;
  if (debug_enabled(DBG_1)) {
   switch (cmd->sense_buffer[2] & 0x0f) {
   case 129:
    dprintkl(KERN_DEBUG,
         "ReqSense: NOT_READY cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
         cmd->cmnd[0], dcb->target_id,
         dcb->target_lun, status, acb->scan_devices);
    break;
   case 128:
    dprintkl(KERN_DEBUG,
         "ReqSense: UNIT_ATTENTION cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
         cmd->cmnd[0], dcb->target_id,
         dcb->target_lun, status, acb->scan_devices);
    break;
   case 131:
    dprintkl(KERN_DEBUG,
         "ReqSense: ILLEGAL_REQUEST cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
         cmd->cmnd[0], dcb->target_id,
         dcb->target_lun, status, acb->scan_devices);
    break;
   case 130:
    dprintkl(KERN_DEBUG,
         "ReqSense: MEDIUM_ERROR cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
         cmd->cmnd[0], dcb->target_id,
         dcb->target_lun, status, acb->scan_devices);
    break;
   case 132:
    dprintkl(KERN_DEBUG,
         "ReqSense: HARDWARE_ERROR cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
         cmd->cmnd[0], dcb->target_id,
         dcb->target_lun, status, acb->scan_devices);
    break;
   }
   if (cmd->sense_buffer[7] >= 6)
    printk("sense=0x%02x ASC=0x%02x ASCQ=0x%02x "
     "(0x%08x 0x%08x)\n",
     cmd->sense_buffer[2], cmd->sense_buffer[12],
     cmd->sense_buffer[13],
     *((unsigned int *)(cmd->sense_buffer + 3)),
     *((unsigned int *)(cmd->sense_buffer + 8)));
   else
    printk("sense=0x%02x No ASC/ASCQ (0x%08x)\n",
     cmd->sense_buffer[2],
     *((unsigned int *)(cmd->sense_buffer + 3)));
  }

  if (status == (CHECK_CONDITION << 1)) {
   cmd->result = DID_BAD_TARGET << 16;
   goto ckc_e;
  }
  dprintkdbg(DBG_0, "srb_done: AUTO_REQSENSE2\n");

  if (srb->total_xfer_length
      && srb->total_xfer_length >= cmd->underflow)
   cmd->result =
       MK_RES_LNX(DRIVER_SENSE, DID_OK,
           srb->end_message, CHECK_CONDITION);

  else
   cmd->result =
       MK_RES_LNX(DRIVER_SENSE, DID_OK,
           srb->end_message, CHECK_CONDITION);

  goto ckc_e;
 }


 if (status) {



  if (status_byte(status) == CHECK_CONDITION) {
   request_sense(acb, dcb, srb);
   return;
  } else if (status_byte(status) == QUEUE_FULL) {
   tempcnt = (u8)list_size(&dcb->srb_going_list);
   dprintkl(KERN_INFO, "QUEUE_FULL for dev <%02i-%i> with %i cmnds\n",
        dcb->target_id, dcb->target_lun, tempcnt);
   if (tempcnt > 1)
    tempcnt--;
   dcb->max_command = tempcnt;
   free_tag(dcb, srb);
   list_move(&srb->list, &dcb->srb_waiting_list);
   waiting_set_timer(acb, HZ / 20);
   srb->adapter_status = 0;
   srb->target_status = 0;
   return;
  } else if (status == SCSI_STAT_SEL_TIMEOUT) {
   srb->adapter_status = H_SEL_TIMEOUT;
   srb->target_status = 0;
   cmd->result = DID_NO_CONNECT << 16;
  } else {
   srb->adapter_status = 0;
   SET_RES_DID(cmd->result, DID_ERROR);
   SET_RES_MSG(cmd->result, srb->end_message);
   SET_RES_TARGET(cmd->result, status);

  }
 } else {



  status = srb->adapter_status;
  if (status & H_OVER_UNDER_RUN) {
   srb->target_status = 0;
   SET_RES_DID(cmd->result, DID_OK);
   SET_RES_MSG(cmd->result, srb->end_message);
  } else if (srb->status & PARITY_ERROR) {
   SET_RES_DID(cmd->result, DID_PARITY);
   SET_RES_MSG(cmd->result, srb->end_message);
  } else {

   srb->adapter_status = 0;
   srb->target_status = 0;
   SET_RES_DID(cmd->result, DID_OK);
  }
 }

 ckc_only = 0;

      ckc_e:

 pci_unmap_srb(acb, srb);

 if (cmd->cmnd[0] == INQUIRY) {
  unsigned char *base = ((void*)0);
  struct ScsiInqData *ptr;
  unsigned long flags = 0;
  struct scatterlist* sg = scsi_sglist(cmd);
  size_t offset = 0, len = sizeof(struct ScsiInqData);

  local_irq_save(flags);
  base = scsi_kmap_atomic_sg(sg, scsi_sg_count(cmd), &offset, &len);
  ptr = (struct ScsiInqData *)(base + offset);

  if (!ckc_only && (cmd->result & RES_DID) == 0
      && cmd->cmnd[2] == 0 && scsi_bufflen(cmd) >= 8
      && dir != PCI_DMA_NONE && ptr && (ptr->Vers & 0x07) >= 2)
   dcb->inquiry7 = ptr->Flags;



  if ((cmd->result == (DID_OK << 16) ||
       status_byte(cmd->result) == CHECK_CONDITION)) {
   if (!dcb->init_tcq_flag) {
    add_dev(acb, dcb, ptr);
    dcb->init_tcq_flag = 1;
   }
  }

  scsi_kunmap_atomic_sg(base);
  local_irq_restore(flags);
 }


 scsi_set_resid(cmd, srb->total_xfer_length);

 cmd->SCp.this_residual = srb->total_xfer_length;
 cmd->SCp.buffers_residual = 0;
 if (debug_enabled(DBG_KG)) {
  if (srb->total_xfer_length)
   dprintkdbg(DBG_KG, "srb_done: (0x%p) <%02i-%i> "
    "cmnd=0x%02x Missed %i bytes\n",
    cmd, cmd->device->id, (u8)cmd->device->lun,
    cmd->cmnd[0], srb->total_xfer_length);
 }

 if (srb != acb->tmp_srb) {

  dprintkdbg(DBG_0, "srb_done: (0x%p) done result=0x%08x\n",
   cmd, cmd->result);
  list_move_tail(&srb->list, &acb->srb_free_list);
 } else {
  dprintkl(KERN_ERR, "srb_done: ERROR! Completed cmd with tmp_srb\n");
 }

 cmd->scsi_done(cmd);
 waiting_process_next(acb);
}
