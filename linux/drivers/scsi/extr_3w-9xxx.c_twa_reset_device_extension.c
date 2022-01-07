
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct TYPE_9__ {scalar_t__* state; int* free_queue; int chrdev_request_id; int flags; TYPE_1__* host; scalar_t__ reset_print; void* pending_tail; void* pending_head; scalar_t__ pending_request_count; scalar_t__ posted_request_count; void* free_tail; void* free_head; struct scsi_cmnd** srb; } ;
struct TYPE_8__ {int host_lock; } ;
typedef TYPE_2__ TW_Device_Extension ;


 int DID_RESET ;
 int TW_DISABLE_INTERRUPTS (TYPE_2__*) ;
 int TW_ENABLE_AND_CLEAR_INTERRUPTS (TYPE_2__*) ;
 int TW_IN_RESET ;
 int TW_IOCTL_CHRDEV_FREE ;
 int TW_MASK_COMMAND_INTERRUPT (TYPE_2__*) ;
 int TW_Q_LENGTH ;
 void* TW_Q_START ;
 scalar_t__ TW_S_COMPLETED ;
 scalar_t__ TW_S_FINISHED ;
 scalar_t__ TW_S_INITIAL ;
 int clear_bit (int ,int *) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ twa_command_mapped (struct scsi_cmnd*) ;
 scalar_t__ twa_reset_sequence (TYPE_2__*,int) ;

__attribute__((used)) static int twa_reset_device_extension(TW_Device_Extension *tw_dev)
{
 int i = 0;
 int retval = 1;
 unsigned long flags = 0;

 set_bit(TW_IN_RESET, &tw_dev->flags);
 TW_DISABLE_INTERRUPTS(tw_dev);
 TW_MASK_COMMAND_INTERRUPT(tw_dev);
 spin_lock_irqsave(tw_dev->host->host_lock, flags);


 for (i = 0; i < TW_Q_LENGTH; i++) {
  if ((tw_dev->state[i] != TW_S_FINISHED) &&
      (tw_dev->state[i] != TW_S_INITIAL) &&
      (tw_dev->state[i] != TW_S_COMPLETED)) {
   if (tw_dev->srb[i]) {
    struct scsi_cmnd *cmd = tw_dev->srb[i];

    cmd->result = (DID_RESET << 16);
    if (twa_command_mapped(cmd))
     scsi_dma_unmap(cmd);
    cmd->scsi_done(cmd);
   }
  }
 }


 for (i = 0; i < TW_Q_LENGTH; i++) {
  tw_dev->free_queue[i] = i;
  tw_dev->state[i] = TW_S_INITIAL;
 }
 tw_dev->free_head = TW_Q_START;
 tw_dev->free_tail = TW_Q_START;
 tw_dev->posted_request_count = 0;
 tw_dev->pending_request_count = 0;
 tw_dev->pending_head = TW_Q_START;
 tw_dev->pending_tail = TW_Q_START;
 tw_dev->reset_print = 0;

 spin_unlock_irqrestore(tw_dev->host->host_lock, flags);

 if (twa_reset_sequence(tw_dev, 1))
  goto out;

 TW_ENABLE_AND_CLEAR_INTERRUPTS(tw_dev);
 clear_bit(TW_IN_RESET, &tw_dev->flags);
 tw_dev->chrdev_request_id = TW_IOCTL_CHRDEV_FREE;

 retval = 0;
out:
 return retval;
}
