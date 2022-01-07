
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usblp {int present; size_t current_protocol; int intf; struct usblp* device_id_string; struct usblp* statusbuf; struct usblp* readbuf; struct usb_device* dev; TYPE_3__* protocol; int ifnum; scalar_t__ bidir; int minor; int quirks; int urbs; int wwait; int rwait; int lock; int mut; int wmut; } ;
struct usb_interface {int dev; int minor; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_8__ {int idProduct; int idVendor; } ;
struct usb_device {TYPE_4__ descriptor; int devnum; } ;
struct TYPE_7__ {int alt_setting; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int STATUS_BUF_SIZE ;
 int USBLP_BUF_SIZE_IN ;
 int USBLP_DEVICE_ID_SIZE ;
 int USBLP_MINOR_BASE ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,int ,int) ;
 int dev_info (int *,char*,int ,char*,int ,int ,int ,size_t,int ,int ) ;
 int init_usb_anchor (int *) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usblp*) ;
 void* kmalloc (int ,int ) ;
 struct usblp* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_put_intf (int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usblp*) ;
 int usblp_cache_device_id_string (struct usblp*) ;
 int usblp_check_status (struct usblp*,int ) ;
 int usblp_class ;
 int usblp_quirks (int ,int ) ;
 int usblp_select_alts (struct usblp*) ;
 scalar_t__ usblp_set_protocol (struct usblp*,int) ;

__attribute__((used)) static int usblp_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct usblp *usblp;
 int protocol;
 int retval;



 usblp = kzalloc(sizeof(struct usblp), GFP_KERNEL);
 if (!usblp) {
  retval = -ENOMEM;
  goto abort_ret;
 }
 usblp->dev = dev;
 mutex_init(&usblp->wmut);
 mutex_init(&usblp->mut);
 spin_lock_init(&usblp->lock);
 init_waitqueue_head(&usblp->rwait);
 init_waitqueue_head(&usblp->wwait);
 init_usb_anchor(&usblp->urbs);
 usblp->ifnum = intf->cur_altsetting->desc.bInterfaceNumber;
 usblp->intf = usb_get_intf(intf);




 if (!(usblp->device_id_string = kmalloc(USBLP_DEVICE_ID_SIZE, GFP_KERNEL))) {
  retval = -ENOMEM;
  goto abort;
 }






 if (!(usblp->readbuf = kmalloc(USBLP_BUF_SIZE_IN, GFP_KERNEL))) {
  retval = -ENOMEM;
  goto abort;
 }


 usblp->statusbuf = kmalloc(STATUS_BUF_SIZE, GFP_KERNEL);
 if (!usblp->statusbuf) {
  retval = -ENOMEM;
  goto abort;
 }


 usblp->quirks = usblp_quirks(
  le16_to_cpu(dev->descriptor.idVendor),
  le16_to_cpu(dev->descriptor.idProduct));


 protocol = usblp_select_alts(usblp);
 if (protocol < 0) {
  dev_dbg(&intf->dev,
   "incompatible printer-class device 0x%4.4X/0x%4.4X\n",
   le16_to_cpu(dev->descriptor.idVendor),
   le16_to_cpu(dev->descriptor.idProduct));
  retval = -ENODEV;
  goto abort;
 }


 if (usblp_set_protocol(usblp, protocol) < 0) {
  retval = -ENODEV;
  goto abort;
 }


 usblp_cache_device_id_string(usblp);





 usb_set_intfdata(intf, usblp);

 usblp->present = 1;

 retval = usb_register_dev(intf, &usblp_class);
 if (retval) {
  dev_err(&intf->dev,
   "usblp: Not able to get a minor (base %u, slice default): %d\n",
   USBLP_MINOR_BASE, retval);
  goto abort_intfdata;
 }
 usblp->minor = intf->minor;
 dev_info(&intf->dev,
  "usblp%d: USB %sdirectional printer dev %d if %d alt %d proto %d vid 0x%4.4X pid 0x%4.4X\n",
  usblp->minor, usblp->bidir ? "Bi" : "Uni", dev->devnum,
  usblp->ifnum,
  usblp->protocol[usblp->current_protocol].alt_setting,
  usblp->current_protocol,
  le16_to_cpu(usblp->dev->descriptor.idVendor),
  le16_to_cpu(usblp->dev->descriptor.idProduct));

 return 0;

abort_intfdata:
 usb_set_intfdata(intf, ((void*)0));
abort:
 kfree(usblp->readbuf);
 kfree(usblp->statusbuf);
 kfree(usblp->device_id_string);
 usb_put_intf(usblp->intf);
 kfree(usblp);
abort_ret:
 return retval;
}
