
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int minor; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {scalar_t__ speed; int dev; int devnum; } ;
struct sisusb_usb_data {int ibufsize; int numobufs; int obufsize; int completein; int present; int ready; struct usb_device* sisusb_dev; int wait_q; void* SiS_Pr; scalar_t__* urbstatus; TYPE_1__* urbout_context; void** sisurbout; void* sisurbin; void** obuf; void* ibuf; int minor; int ioportbase; int mmiosize; int mmiobase; int vrambase; int lock; int kref; } ;
struct SiS_Private {int dummy; } ;
struct TYPE_2__ {int urbindex; void* sisusb; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAX_NR_CONSOLES ;
 int NUMOBUFS ;
 int SISUSB_IBUF_SIZE ;
 int SISUSB_OBUF_SIZE ;
 int SISUSB_PCI_IOPORTBASE ;
 int SISUSB_PCI_MEMBASE ;
 int SISUSB_PCI_MMIOBASE ;
 int SISUSB_PCI_MMIOSIZE ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_SUPER ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct sisusb_usb_data*) ;
 void* kmalloc (int,int ) ;
 int kref_init (int *) ;
 struct sisusb_usb_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sisusb_console_init (struct sisusb_usb_data*,scalar_t__,scalar_t__) ;
 scalar_t__ sisusb_first_vc ;
 int sisusb_free_buffers (struct sisusb_usb_data*) ;
 int sisusb_free_urbs (struct sisusb_usb_data*) ;
 scalar_t__ sisusb_init_gfxdevice (struct sisusb_usb_data*,int) ;
 scalar_t__ sisusb_last_vc ;
 int sisusb_testreadwrite (struct sisusb_usb_data*) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct sisusb_usb_data*) ;
 int usb_sisusb_class ;

__attribute__((used)) static int sisusb_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct sisusb_usb_data *sisusb;
 int retval = 0, i;

 dev_info(&dev->dev, "USB2VGA dongle found at address %d\n",
   dev->devnum);


 sisusb = kzalloc(sizeof(*sisusb), GFP_KERNEL);
 if (!sisusb)
  return -ENOMEM;

 kref_init(&sisusb->kref);

 mutex_init(&(sisusb->lock));

 sisusb->sisusb_dev = dev;
 sisusb->vrambase = SISUSB_PCI_MEMBASE;
 sisusb->mmiobase = SISUSB_PCI_MMIOBASE;
 sisusb->mmiosize = SISUSB_PCI_MMIOSIZE;
 sisusb->ioportbase = SISUSB_PCI_IOPORTBASE;



 retval = usb_register_dev(intf, &usb_sisusb_class);
 if (retval) {
  dev_err(&sisusb->sisusb_dev->dev,
    "Failed to get a minor for device %d\n",
    dev->devnum);
  retval = -ENODEV;
  goto error_1;
 }

 sisusb->minor = intf->minor;


 sisusb->ibufsize = SISUSB_IBUF_SIZE;
 sisusb->ibuf = kmalloc(SISUSB_IBUF_SIZE, GFP_KERNEL);
 if (!sisusb->ibuf) {
  retval = -ENOMEM;
  goto error_2;
 }

 sisusb->numobufs = 0;
 sisusb->obufsize = SISUSB_OBUF_SIZE;
 for (i = 0; i < NUMOBUFS; i++) {
  sisusb->obuf[i] = kmalloc(SISUSB_OBUF_SIZE, GFP_KERNEL);
  if (!sisusb->obuf[i]) {
   if (i == 0) {
    retval = -ENOMEM;
    goto error_3;
   }
   break;
  }
  sisusb->numobufs++;
 }


 sisusb->sisurbin = usb_alloc_urb(0, GFP_KERNEL);
 if (!sisusb->sisurbin) {
  retval = -ENOMEM;
  goto error_3;
 }
 sisusb->completein = 1;

 for (i = 0; i < sisusb->numobufs; i++) {
  sisusb->sisurbout[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!sisusb->sisurbout[i]) {
   retval = -ENOMEM;
   goto error_4;
  }
  sisusb->urbout_context[i].sisusb = (void *)sisusb;
  sisusb->urbout_context[i].urbindex = i;
  sisusb->urbstatus[i] = 0;
 }

 dev_info(&sisusb->sisusb_dev->dev, "Allocated %d output buffers\n",
   sisusb->numobufs);
 init_waitqueue_head(&sisusb->wait_q);

 usb_set_intfdata(intf, sisusb);

 usb_get_dev(sisusb->sisusb_dev);

 sisusb->present = 1;

 if (dev->speed == USB_SPEED_HIGH || dev->speed >= USB_SPEED_SUPER) {
  int initscreen = 1;






  if (sisusb_init_gfxdevice(sisusb, initscreen))
   dev_err(&sisusb->sisusb_dev->dev,
     "Failed to early initialize device\n");

 } else
  dev_info(&sisusb->sisusb_dev->dev,
    "Not attached to USB 2.0 hub, deferring init\n");

 sisusb->ready = 1;
 return 0;

error_4:
 sisusb_free_urbs(sisusb);
error_3:
 sisusb_free_buffers(sisusb);
error_2:
 usb_deregister_dev(intf, &usb_sisusb_class);
error_1:
 kfree(sisusb);
 return retval;
}
