
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct urb {int transfer_flags; int stream_id; } ;
struct uas_dev_info {scalar_t__ use_streams; int status_pipe; struct usb_device* udev; } ;
struct uas_cmd_info {int uas_tag; } ;
struct sense_iu {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; int SCp; } ;
typedef int gfp_t ;
struct TYPE_2__ {int host; } ;


 int URB_FREE_BUFFER ;
 struct sense_iu* kzalloc (int,int ) ;
 int uas_stat_cmplt ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int ,struct sense_iu*,int,int ,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static struct urb *uas_alloc_sense_urb(struct uas_dev_info *devinfo, gfp_t gfp,
           struct scsi_cmnd *cmnd)
{
 struct usb_device *udev = devinfo->udev;
 struct uas_cmd_info *cmdinfo = (void *)&cmnd->SCp;
 struct urb *urb = usb_alloc_urb(0, gfp);
 struct sense_iu *iu;

 if (!urb)
  goto out;

 iu = kzalloc(sizeof(*iu), gfp);
 if (!iu)
  goto free;

 usb_fill_bulk_urb(urb, udev, devinfo->status_pipe, iu, sizeof(*iu),
     uas_stat_cmplt, cmnd->device->host);
 if (devinfo->use_streams)
  urb->stream_id = cmdinfo->uas_tag;
 urb->transfer_flags |= URB_FREE_BUFFER;
 out:
 return urb;
 free:
 usb_free_urb(urb);
 return ((void*)0);
}
