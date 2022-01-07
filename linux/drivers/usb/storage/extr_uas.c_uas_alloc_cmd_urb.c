
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct urb {int transfer_flags; } ;
struct uas_dev_info {int cmd_pipe; struct usb_device* udev; } ;
struct uas_cmd_info {int uas_tag; } ;
struct scsi_device {int lun; } ;
struct scsi_cmnd {int cmd_len; int cmnd; int SCp; struct scsi_device* device; } ;
struct command_iu {int len; int cdb; int lun; int prio_attr; int tag; int iu_id; } ;
typedef int gfp_t ;


 int ALIGN (int,int) ;
 int IU_ID_COMMAND ;
 int UAS_SIMPLE_TAG ;
 int URB_FREE_BUFFER ;
 int cpu_to_be16 (int ) ;
 int int_to_scsilun (int ,int *) ;
 struct command_iu* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int uas_cmd_cmplt ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int ,struct command_iu*,int,int ,int *) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static struct urb *uas_alloc_cmd_urb(struct uas_dev_info *devinfo, gfp_t gfp,
     struct scsi_cmnd *cmnd)
{
 struct usb_device *udev = devinfo->udev;
 struct scsi_device *sdev = cmnd->device;
 struct uas_cmd_info *cmdinfo = (void *)&cmnd->SCp;
 struct urb *urb = usb_alloc_urb(0, gfp);
 struct command_iu *iu;
 int len;

 if (!urb)
  goto out;

 len = cmnd->cmd_len - 16;
 if (len < 0)
  len = 0;
 len = ALIGN(len, 4);
 iu = kzalloc(sizeof(*iu) + len, gfp);
 if (!iu)
  goto free;

 iu->iu_id = IU_ID_COMMAND;
 iu->tag = cpu_to_be16(cmdinfo->uas_tag);
 iu->prio_attr = UAS_SIMPLE_TAG;
 iu->len = len;
 int_to_scsilun(sdev->lun, &iu->lun);
 memcpy(iu->cdb, cmnd->cmnd, cmnd->cmd_len);

 usb_fill_bulk_urb(urb, udev, devinfo->cmd_pipe, iu, sizeof(*iu) + len,
       uas_cmd_cmplt, ((void*)0));
 urb->transfer_flags |= URB_FREE_BUFFER;
 out:
 return urb;
 free:
 usb_free_urb(urb);
 return ((void*)0);
}
