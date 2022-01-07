
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct uas_dev_info {int cmd_urbs; int data_urbs; int lock; } ;
struct uas_cmd_info {int state; int * cmd_urb; int * data_out_urb; int * data_in_urb; } ;
struct scsi_cmnd {int SCp; } ;


 int ALLOC_CMD_URB ;
 int ALLOC_DATA_IN_URB ;
 int ALLOC_DATA_OUT_URB ;
 int COMMAND_INFLIGHT ;
 int DATA_IN_URB_INFLIGHT ;
 int DATA_OUT_URB_INFLIGHT ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int GFP_ATOMIC ;
 int SCSI_MLQUEUE_DEVICE_BUSY ;
 int SUBMIT_CMD_URB ;
 int SUBMIT_DATA_IN_URB ;
 int SUBMIT_DATA_OUT_URB ;
 int SUBMIT_STATUS_URB ;
 int lockdep_assert_held (int *) ;
 int * uas_alloc_cmd_urb (struct uas_dev_info*,int ,struct scsi_cmnd*) ;
 void* uas_alloc_data_urb (struct uas_dev_info*,int ,struct scsi_cmnd*,int ) ;
 int uas_log_cmd_state (struct scsi_cmnd*,char*,int) ;
 struct urb* uas_submit_sense_urb (struct scsi_cmnd*,int ) ;
 int usb_anchor_urb (int *,int *) ;
 int usb_submit_urb (int *,int ) ;
 int usb_unanchor_urb (int *) ;

__attribute__((used)) static int uas_submit_urbs(struct scsi_cmnd *cmnd,
      struct uas_dev_info *devinfo)
{
 struct uas_cmd_info *cmdinfo = (void *)&cmnd->SCp;
 struct urb *urb;
 int err;

 lockdep_assert_held(&devinfo->lock);
 if (cmdinfo->state & SUBMIT_STATUS_URB) {
  urb = uas_submit_sense_urb(cmnd, GFP_ATOMIC);
  if (!urb)
   return SCSI_MLQUEUE_DEVICE_BUSY;
  cmdinfo->state &= ~SUBMIT_STATUS_URB;
 }

 if (cmdinfo->state & ALLOC_DATA_IN_URB) {
  cmdinfo->data_in_urb = uas_alloc_data_urb(devinfo, GFP_ATOMIC,
       cmnd, DMA_FROM_DEVICE);
  if (!cmdinfo->data_in_urb)
   return SCSI_MLQUEUE_DEVICE_BUSY;
  cmdinfo->state &= ~ALLOC_DATA_IN_URB;
 }

 if (cmdinfo->state & SUBMIT_DATA_IN_URB) {
  usb_anchor_urb(cmdinfo->data_in_urb, &devinfo->data_urbs);
  err = usb_submit_urb(cmdinfo->data_in_urb, GFP_ATOMIC);
  if (err) {
   usb_unanchor_urb(cmdinfo->data_in_urb);
   uas_log_cmd_state(cmnd, "data in submit err", err);
   return SCSI_MLQUEUE_DEVICE_BUSY;
  }
  cmdinfo->state &= ~SUBMIT_DATA_IN_URB;
  cmdinfo->state |= DATA_IN_URB_INFLIGHT;
 }

 if (cmdinfo->state & ALLOC_DATA_OUT_URB) {
  cmdinfo->data_out_urb = uas_alloc_data_urb(devinfo, GFP_ATOMIC,
       cmnd, DMA_TO_DEVICE);
  if (!cmdinfo->data_out_urb)
   return SCSI_MLQUEUE_DEVICE_BUSY;
  cmdinfo->state &= ~ALLOC_DATA_OUT_URB;
 }

 if (cmdinfo->state & SUBMIT_DATA_OUT_URB) {
  usb_anchor_urb(cmdinfo->data_out_urb, &devinfo->data_urbs);
  err = usb_submit_urb(cmdinfo->data_out_urb, GFP_ATOMIC);
  if (err) {
   usb_unanchor_urb(cmdinfo->data_out_urb);
   uas_log_cmd_state(cmnd, "data out submit err", err);
   return SCSI_MLQUEUE_DEVICE_BUSY;
  }
  cmdinfo->state &= ~SUBMIT_DATA_OUT_URB;
  cmdinfo->state |= DATA_OUT_URB_INFLIGHT;
 }

 if (cmdinfo->state & ALLOC_CMD_URB) {
  cmdinfo->cmd_urb = uas_alloc_cmd_urb(devinfo, GFP_ATOMIC, cmnd);
  if (!cmdinfo->cmd_urb)
   return SCSI_MLQUEUE_DEVICE_BUSY;
  cmdinfo->state &= ~ALLOC_CMD_URB;
 }

 if (cmdinfo->state & SUBMIT_CMD_URB) {
  usb_anchor_urb(cmdinfo->cmd_urb, &devinfo->cmd_urbs);
  err = usb_submit_urb(cmdinfo->cmd_urb, GFP_ATOMIC);
  if (err) {
   usb_unanchor_urb(cmdinfo->cmd_urb);
   uas_log_cmd_state(cmnd, "cmd submit err", err);
   return SCSI_MLQUEUE_DEVICE_BUSY;
  }
  cmdinfo->cmd_urb = ((void*)0);
  cmdinfo->state &= ~SUBMIT_CMD_URB;
  cmdinfo->state |= COMMAND_INFLIGHT;
 }

 return 0;
}
