
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_3__* altsetting; int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {TYPE_1__* bus; } ;
struct uas_dev_info {unsigned long flags; scalar_t__ qdepth; int work; int lock; int data_urbs; int sense_urbs; int cmd_urbs; scalar_t__ shutdown; scalar_t__ resetting; struct usb_device* udev; struct usb_interface* intf; } ;
struct Scsi_Host {int max_cmd_len; int max_id; int max_lun; scalar_t__ can_queue; scalar_t__ hostdata; int sg_tablesize; scalar_t__ max_channel; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
struct TYPE_4__ {int sg_tablesize; } ;


 int ENODEV ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int init_usb_anchor (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 int spin_lock_init (int *) ;
 int uas_configure_endpoints (struct uas_dev_info*) ;
 int uas_do_work ;
 int uas_free_streams (struct uas_dev_info*) ;
 int uas_host_template ;
 scalar_t__ uas_switch_interface (struct usb_device*,struct usb_interface*) ;
 int uas_use_uas_driver (struct usb_interface*,struct usb_device_id const*,unsigned long*) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct Scsi_Host*) ;

__attribute__((used)) static int uas_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 int result = -ENOMEM;
 struct Scsi_Host *shost = ((void*)0);
 struct uas_dev_info *devinfo;
 struct usb_device *udev = interface_to_usbdev(intf);
 unsigned long dev_flags;

 if (!uas_use_uas_driver(intf, id, &dev_flags))
  return -ENODEV;

 if (uas_switch_interface(udev, intf))
  return -ENODEV;

 shost = scsi_host_alloc(&uas_host_template,
    sizeof(struct uas_dev_info));
 if (!shost)
  goto set_alt0;

 shost->max_cmd_len = 16 + 252;
 shost->max_id = 1;
 shost->max_lun = 256;
 shost->max_channel = 0;
 shost->sg_tablesize = udev->bus->sg_tablesize;

 devinfo = (struct uas_dev_info *)shost->hostdata;
 devinfo->intf = intf;
 devinfo->udev = udev;
 devinfo->resetting = 0;
 devinfo->shutdown = 0;
 devinfo->flags = dev_flags;
 init_usb_anchor(&devinfo->cmd_urbs);
 init_usb_anchor(&devinfo->sense_urbs);
 init_usb_anchor(&devinfo->data_urbs);
 spin_lock_init(&devinfo->lock);
 INIT_WORK(&devinfo->work, uas_do_work);

 result = uas_configure_endpoints(devinfo);
 if (result)
  goto set_alt0;





 shost->can_queue = devinfo->qdepth - 2;

 usb_set_intfdata(intf, shost);
 result = scsi_add_host(shost, &intf->dev);
 if (result)
  goto free_streams;

 scsi_scan_host(shost);
 return result;

free_streams:
 uas_free_streams(devinfo);
 usb_set_intfdata(intf, ((void*)0));
set_alt0:
 usb_set_interface(udev, intf->altsetting[0].desc.bInterfaceNumber, 0);
 if (shost)
  scsi_host_put(shost);
 return result;
}
