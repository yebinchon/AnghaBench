
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uas_cmd_info {int state; int data_out_urb; int data_in_urb; int cmd_urb; } ;
struct scsi_cmnd {int SCp; } ;


 int DATA_IN_URB_INFLIGHT ;
 int DATA_OUT_URB_INFLIGHT ;
 int SUBMIT_CMD_URB ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void uas_free_unsubmitted_urbs(struct scsi_cmnd *cmnd)
{
 struct uas_cmd_info *cmdinfo;

 if (!cmnd)
  return;

 cmdinfo = (void *)&cmnd->SCp;

 if (cmdinfo->state & SUBMIT_CMD_URB)
  usb_free_urb(cmdinfo->cmd_urb);


 if (!(cmdinfo->state & DATA_IN_URB_INFLIGHT))
  usb_free_urb(cmdinfo->data_in_urb);
 if (!(cmdinfo->state & DATA_OUT_URB_INFLIGHT))
  usb_free_urb(cmdinfo->data_out_urb);
}
