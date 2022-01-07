
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct wdm_device {int wMaxCommand; int wMaxPacketSize; int (* manage_power ) (struct usb_interface*,int) ;int device_list; void* inbuf; TYPE_3__* irq; struct usb_interface* intf; void* response; void* inum; void* sbuf; void* validity; void* ubuf; void* command; void* orq; int service_outs_intr; int rxwork; int wait; int iuspin; int wlock; int rlock; } ;
struct usb_interface {int usb_dev; int dev; TYPE_2__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_ctrlrequest {int dummy; } ;
struct TYPE_6__ {int bRequestType; void* wLength; void* wIndex; scalar_t__ wValue; int bRequest; } ;
struct TYPE_4__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int USB_CDC_GET_ENCAPSULATED_RESPONSE ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int cleanup (struct wdm_device*) ;
 void* cpu_to_le16 (int) ;
 int dev_info (int *,char*,int ) ;
 int dev_name (int ) ;
 int init_waitqueue_head (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 void* kmalloc (int,int ) ;
 struct wdm_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_init (int *) ;
 int service_interrupt_work ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_fill_control_urb (void*,int ,int ,unsigned char*,void*,int,int ,struct wdm_device*) ;
 int usb_fill_int_urb (void*,int ,int ,void*,int,int ,struct wdm_device*,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int wdm_class ;
 int wdm_device_list ;
 int wdm_device_list_lock ;
 int wdm_in_callback ;
 int wdm_int_callback ;
 int wdm_rxwork ;

__attribute__((used)) static int wdm_create(struct usb_interface *intf, struct usb_endpoint_descriptor *ep,
  u16 bufsize, int (*manage_power)(struct usb_interface *, int))
{
 int rv = -ENOMEM;
 struct wdm_device *desc;

 desc = kzalloc(sizeof(struct wdm_device), GFP_KERNEL);
 if (!desc)
  goto out;
 INIT_LIST_HEAD(&desc->device_list);
 mutex_init(&desc->rlock);
 mutex_init(&desc->wlock);
 spin_lock_init(&desc->iuspin);
 init_waitqueue_head(&desc->wait);
 desc->wMaxCommand = bufsize;

 desc->inum = cpu_to_le16((u16)intf->cur_altsetting->desc.bInterfaceNumber);
 desc->intf = intf;
 INIT_WORK(&desc->rxwork, wdm_rxwork);
 INIT_WORK(&desc->service_outs_intr, service_interrupt_work);

 rv = -EINVAL;
 if (!usb_endpoint_is_int_in(ep))
  goto err;

 desc->wMaxPacketSize = usb_endpoint_maxp(ep);

 desc->orq = kmalloc(sizeof(struct usb_ctrlrequest), GFP_KERNEL);
 if (!desc->orq)
  goto err;
 desc->irq = kmalloc(sizeof(struct usb_ctrlrequest), GFP_KERNEL);
 if (!desc->irq)
  goto err;

 desc->validity = usb_alloc_urb(0, GFP_KERNEL);
 if (!desc->validity)
  goto err;

 desc->response = usb_alloc_urb(0, GFP_KERNEL);
 if (!desc->response)
  goto err;

 desc->command = usb_alloc_urb(0, GFP_KERNEL);
 if (!desc->command)
  goto err;

 desc->ubuf = kmalloc(desc->wMaxCommand, GFP_KERNEL);
 if (!desc->ubuf)
  goto err;

 desc->sbuf = kmalloc(desc->wMaxPacketSize, GFP_KERNEL);
 if (!desc->sbuf)
  goto err;

 desc->inbuf = kmalloc(desc->wMaxCommand, GFP_KERNEL);
 if (!desc->inbuf)
  goto err;

 usb_fill_int_urb(
  desc->validity,
  interface_to_usbdev(intf),
  usb_rcvintpipe(interface_to_usbdev(intf), ep->bEndpointAddress),
  desc->sbuf,
  desc->wMaxPacketSize,
  wdm_int_callback,
  desc,
  ep->bInterval
 );

 desc->irq->bRequestType = (USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE);
 desc->irq->bRequest = USB_CDC_GET_ENCAPSULATED_RESPONSE;
 desc->irq->wValue = 0;
 desc->irq->wIndex = desc->inum;
 desc->irq->wLength = cpu_to_le16(desc->wMaxCommand);

 usb_fill_control_urb(
  desc->response,
  interface_to_usbdev(intf),

  usb_rcvctrlpipe(interface_to_usbdev(desc->intf), 0),
  (unsigned char *)desc->irq,
  desc->inbuf,
  desc->wMaxCommand,
  wdm_in_callback,
  desc
 );

 desc->manage_power = manage_power;

 spin_lock(&wdm_device_list_lock);
 list_add(&desc->device_list, &wdm_device_list);
 spin_unlock(&wdm_device_list_lock);

 rv = usb_register_dev(intf, &wdm_class);
 if (rv < 0)
  goto err;
 else
  dev_info(&intf->dev, "%s: USB WDM device\n", dev_name(intf->usb_dev));
out:
 return rv;
err:
 spin_lock(&wdm_device_list_lock);
 list_del(&desc->device_list);
 spin_unlock(&wdm_device_list_lock);
 cleanup(desc);
 return rv;
}
