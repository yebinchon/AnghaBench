
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct uas_dev_info {int resetting; int data_urbs; int sense_urbs; int cmd_urbs; int work; int lock; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int DID_NO_CONNECT ;
 int cancel_work_sync (int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uas_free_streams (struct uas_dev_info*) ;
 int uas_zap_pending (struct uas_dev_info*,int ) ;
 struct Scsi_Host* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void uas_disconnect(struct usb_interface *intf)
{
 struct Scsi_Host *shost = usb_get_intfdata(intf);
 struct uas_dev_info *devinfo = (struct uas_dev_info *)shost->hostdata;
 unsigned long flags;

 spin_lock_irqsave(&devinfo->lock, flags);
 devinfo->resetting = 1;
 spin_unlock_irqrestore(&devinfo->lock, flags);

 cancel_work_sync(&devinfo->work);
 usb_kill_anchored_urbs(&devinfo->cmd_urbs);
 usb_kill_anchored_urbs(&devinfo->sense_urbs);
 usb_kill_anchored_urbs(&devinfo->data_urbs);
 uas_zap_pending(devinfo, DID_NO_CONNECT);

 scsi_remove_host(shost);
 uas_free_streams(devinfo);
 scsi_host_put(shost);
}
