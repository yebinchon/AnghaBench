
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_yurex {int bbu; int kref; TYPE_2__* urb; void* int_buffer; int int_in_endpointAddr; int udev; TYPE_4__* cntl_urb; void* cntl_buffer; TYPE_5__* cntl_req; int interface; int waitq; int lock; int io_mutex; } ;
struct usb_interface {int minor; int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_6__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {int bRequestType; void* wLength; void* wIndex; void* wValue; int bRequest; } ;
struct TYPE_8__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_7__ {int transfer_flags; int transfer_dma; } ;


 int DEFINE_WAIT (int ) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_OUTPUT_REPORT ;
 int HID_REQ_SET_REPORT ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int YUREX_BUF_SIZE ;
 void* cpu_to_le16 (int) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int init_waitqueue_head (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 TYPE_5__* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct usb_yurex* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 void* usb_alloc_coherent (int ,int,int ,int *) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (TYPE_4__*,int ,int ,void*,void*,int,int ,struct usb_yurex*) ;
 int usb_fill_int_urb (TYPE_2__*,int ,int ,void*,int,int ,struct usb_yurex*,int) ;
 int usb_find_int_in_endpoint (struct usb_host_interface*,struct usb_endpoint_descriptor**) ;
 int usb_get_dev (int ) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_yurex*) ;
 int usb_sndctrlpipe (int ,int ) ;
 scalar_t__ usb_submit_urb (TYPE_2__*,int ) ;
 int wait ;
 int yurex_class ;
 int yurex_control_callback ;
 int yurex_delete ;
 int yurex_interrupt ;

__attribute__((used)) static int yurex_probe(struct usb_interface *interface, const struct usb_device_id *id)
{
 struct usb_yurex *dev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 int retval = -ENOMEM;
 DEFINE_WAIT(wait);
 int res;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  goto error;
 kref_init(&dev->kref);
 mutex_init(&dev->io_mutex);
 spin_lock_init(&dev->lock);
 init_waitqueue_head(&dev->waitq);

 dev->udev = usb_get_dev(interface_to_usbdev(interface));
 dev->interface = usb_get_intf(interface);


 iface_desc = interface->cur_altsetting;
 res = usb_find_int_in_endpoint(iface_desc, &endpoint);
 if (res) {
  dev_err(&interface->dev, "Could not find endpoints\n");
  retval = res;
  goto error;
 }

 dev->int_in_endpointAddr = endpoint->bEndpointAddress;


 dev->cntl_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->cntl_urb)
  goto error;


 dev->cntl_req = kmalloc(YUREX_BUF_SIZE, GFP_KERNEL);
 if (!dev->cntl_req)
  goto error;


 dev->cntl_buffer = usb_alloc_coherent(dev->udev, YUREX_BUF_SIZE,
           GFP_KERNEL,
           &dev->cntl_urb->transfer_dma);
 if (!dev->cntl_buffer) {
  dev_err(&interface->dev, "Could not allocate cntl_buffer\n");
  goto error;
 }


 dev->cntl_req->bRequestType = USB_DIR_OUT | USB_TYPE_CLASS |
          USB_RECIP_INTERFACE;
 dev->cntl_req->bRequest = HID_REQ_SET_REPORT;
 dev->cntl_req->wValue = cpu_to_le16((HID_OUTPUT_REPORT + 1) << 8);
 dev->cntl_req->wIndex = cpu_to_le16(iface_desc->desc.bInterfaceNumber);
 dev->cntl_req->wLength = cpu_to_le16(YUREX_BUF_SIZE);

 usb_fill_control_urb(dev->cntl_urb, dev->udev,
        usb_sndctrlpipe(dev->udev, 0),
        (void *)dev->cntl_req, dev->cntl_buffer,
        YUREX_BUF_SIZE, yurex_control_callback, dev);
 dev->cntl_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;



 dev->urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->urb)
  goto error;


 dev->int_buffer = usb_alloc_coherent(dev->udev, YUREX_BUF_SIZE,
     GFP_KERNEL, &dev->urb->transfer_dma);
 if (!dev->int_buffer) {
  dev_err(&interface->dev, "Could not allocate int_buffer\n");
  goto error;
 }


 usb_fill_int_urb(dev->urb, dev->udev,
    usb_rcvintpipe(dev->udev, dev->int_in_endpointAddr),
    dev->int_buffer, YUREX_BUF_SIZE, yurex_interrupt,
    dev, 1);
 dev->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 if (usb_submit_urb(dev->urb, GFP_KERNEL)) {
  retval = -EIO;
  dev_err(&interface->dev, "Could not submitting URB\n");
  goto error;
 }


 usb_set_intfdata(interface, dev);
 dev->bbu = -1;


 retval = usb_register_dev(interface, &yurex_class);
 if (retval) {
  dev_err(&interface->dev,
   "Not able to get a minor for this device.\n");
  usb_set_intfdata(interface, ((void*)0));
  goto error;
 }

 dev_info(&interface->dev,
   "USB YUREX device now attached to Yurex #%d\n",
   interface->minor);

 return 0;

error:
 if (dev)

  kref_put(&dev->kref, yurex_delete);
 return retval;
}
