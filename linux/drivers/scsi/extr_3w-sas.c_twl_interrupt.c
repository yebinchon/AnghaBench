
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;


typedef int u64 ;
typedef int u32 ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
typedef int irqreturn_t ;
typedef int dma_addr_t ;
struct TYPE_22__ {scalar_t__ status; TYPE_2__* sg_list; } ;
struct TYPE_23__ {TYPE_3__ newcommand; } ;
struct TYPE_25__ {TYPE_4__ command; } ;
struct TYPE_24__ {int* sense_buffer_phys; int chrdev_request_id; scalar_t__* state; TYPE_13__* host; int posted_request_count; struct scsi_cmnd** srb; int ioctl_wqueue; TYPE_6__** command_packet_virt; TYPE_12__** sense_buffer_virt; int flags; } ;
struct TYPE_21__ {scalar_t__ length; } ;
struct TYPE_20__ {int request_id; } ;
struct TYPE_19__ {int host_lock; } ;
struct TYPE_18__ {TYPE_1__ header_desc; } ;
typedef TYPE_5__ TW_Device_Extension ;
typedef TYPE_6__ TW_Command_Full ;
typedef int TW_Command_Apache_Header ;


 int DID_OK ;
 int IRQ_RETVAL (int) ;
 int TWL_HISTATUS_ATTENTION_INTERRUPT ;
 int TWL_HISTATUS_RESPONSE_INTERRUPT ;
 int TWL_HISTATUS_VALID_INTERRUPT ;
 int TWL_HISTAT_REG_ADDR (TYPE_5__*) ;
 int TWL_HOBQPH_REG_ADDR (TYPE_5__*) ;
 int TWL_HOBQPL_REG_ADDR (TYPE_5__*) ;
 int TWL_MASK_INTERRUPTS (TYPE_5__*) ;
 int TW_DRIVER ;
 int TW_IN_RESET ;
 int TW_IOCTL_CHRDEV_FREE ;
 int TW_NOTMFA_OUT (int) ;
 int TW_PRINTK (TYPE_13__*,int ,int,char*) ;
 int TW_Q_LENGTH ;
 int TW_RESID_OUT (int) ;
 scalar_t__ TW_S_COMPLETED ;
 scalar_t__ TW_S_POSTED ;
 int le16_to_cpu (int ) ;
 int memcpy (TYPE_6__*,TYPE_12__*,int) ;
 void* readl (int ) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ twl_aen_complete (TYPE_5__*,int) ;
 int twl_fill_sense (TYPE_5__*,int,int,int,int) ;
 int twl_free_request_id (TYPE_5__*,int) ;
 scalar_t__ twl_handle_attention_interrupt (TYPE_5__*) ;
 int wake_up (int *) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t twl_interrupt(int irq, void *dev_instance)
{
 TW_Device_Extension *tw_dev = (TW_Device_Extension *)dev_instance;
 int i, handled = 0, error = 0;
 dma_addr_t mfa = 0;
 u32 reg, regl, regh, response, request_id = 0;
 struct scsi_cmnd *cmd;
 TW_Command_Full *full_command_packet;

 spin_lock(tw_dev->host->host_lock);


 reg = readl(TWL_HISTAT_REG_ADDR(tw_dev));


 if (!(reg & TWL_HISTATUS_VALID_INTERRUPT))
  goto twl_interrupt_bail;

 handled = 1;


 if (test_bit(TW_IN_RESET, &tw_dev->flags))
  goto twl_interrupt_bail;


 if (reg & TWL_HISTATUS_ATTENTION_INTERRUPT) {
  if (twl_handle_attention_interrupt(tw_dev)) {
   TWL_MASK_INTERRUPTS(tw_dev);
   goto twl_interrupt_bail;
  }
 }


 while (reg & TWL_HISTATUS_RESPONSE_INTERRUPT) {
  if (sizeof(dma_addr_t) > 4) {
   regh = readl(TWL_HOBQPH_REG_ADDR(tw_dev));
   regl = readl(TWL_HOBQPL_REG_ADDR(tw_dev));
   mfa = ((u64)regh << 32) | regl;
  } else
   mfa = readl(TWL_HOBQPL_REG_ADDR(tw_dev));

  error = 0;
  response = (u32)mfa;


  if (!TW_NOTMFA_OUT(response)) {
   for (i=0;i<TW_Q_LENGTH;i++) {
    if (tw_dev->sense_buffer_phys[i] == mfa) {
     request_id = le16_to_cpu(tw_dev->sense_buffer_virt[i]->header_desc.request_id);
     if (tw_dev->srb[request_id] != ((void*)0))
      error = twl_fill_sense(tw_dev, i, request_id, 1, 1);
     else {

      if (request_id != tw_dev->chrdev_request_id)
       error = twl_fill_sense(tw_dev, i, request_id, 0, 1);
      else
       memcpy(tw_dev->command_packet_virt[request_id], tw_dev->sense_buffer_virt[i], sizeof(TW_Command_Apache_Header));
     }


     writel((u32)((u64)tw_dev->sense_buffer_phys[i] >> 32), TWL_HOBQPH_REG_ADDR(tw_dev));
     writel((u32)tw_dev->sense_buffer_phys[i], TWL_HOBQPL_REG_ADDR(tw_dev));
     break;
    }
   }
  } else
   request_id = TW_RESID_OUT(response);

  full_command_packet = tw_dev->command_packet_virt[request_id];


  if (tw_dev->state[request_id] != TW_S_POSTED) {
   if (tw_dev->srb[request_id] != ((void*)0)) {
    TW_PRINTK(tw_dev->host, TW_DRIVER, 0xe, "Received a request id that wasn't posted");
    TWL_MASK_INTERRUPTS(tw_dev);
    goto twl_interrupt_bail;
   }
  }


  if (tw_dev->srb[request_id] == ((void*)0)) {
   if (request_id != tw_dev->chrdev_request_id) {
    if (twl_aen_complete(tw_dev, request_id))
     TW_PRINTK(tw_dev->host, TW_DRIVER, 0xf, "Error completing AEN during attention interrupt");
   } else {
    tw_dev->chrdev_request_id = TW_IOCTL_CHRDEV_FREE;
    wake_up(&tw_dev->ioctl_wqueue);
   }
  } else {
   cmd = tw_dev->srb[request_id];

   if (!error)
    cmd->result = (DID_OK << 16);


   if ((scsi_sg_count(cmd) <= 1) && (full_command_packet->command.newcommand.status == 0)) {
    if (full_command_packet->command.newcommand.sg_list[0].length < scsi_bufflen(tw_dev->srb[request_id]))
     scsi_set_resid(cmd, scsi_bufflen(cmd) - full_command_packet->command.newcommand.sg_list[0].length);
   }


   scsi_dma_unmap(cmd);
   cmd->scsi_done(cmd);
   tw_dev->state[request_id] = TW_S_COMPLETED;
   twl_free_request_id(tw_dev, request_id);
   tw_dev->posted_request_count--;
  }


  reg = readl(TWL_HISTAT_REG_ADDR(tw_dev));
 }

twl_interrupt_bail:
 spin_unlock(tw_dev->host->host_lock);
 return IRQ_RETVAL(handled);
}
