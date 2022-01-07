
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_onetouch {int data_dma; int data; TYPE_6__* irq; struct input_dev* dev; int phys; int name; struct usb_device* udev; } ;
struct TYPE_10__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct TYPE_12__ {int idProduct; int idVendor; } ;
struct usb_device {char* product; int dev; TYPE_4__ descriptor; scalar_t__ manufacturer; } ;
struct us_data {int suspend_resume_hook; struct usb_onetouch* extra; int extra_destructor; TYPE_1__* pusb_intf; struct usb_device* pusb_dev; } ;
struct TYPE_13__ {int * parent; } ;
struct input_dev {int close; int open; int keybit; int evbit; TYPE_5__ dev; int id; int phys; int name; } ;
struct TYPE_14__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_11__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_9__ {struct usb_host_interface* cur_altsetting; } ;


 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int ONETOUCH_BUTTON ;
 int ONETOUCH_PKT_LEN ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int clear_bit (int ,int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_drvdata (struct input_dev*,struct usb_onetouch*) ;
 int kfree (struct usb_onetouch*) ;
 struct usb_onetouch* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int min (int,int ) ;
 int onetouch_release_input ;
 int set_bit (int ,int ) ;
 int snprintf (int ,int,char*,int,int) ;
 int strlcat (int ,char*,int) ;
 int strlcpy (int ,scalar_t__,int) ;
 int strlen (int ) ;
 int usb_alloc_coherent (struct usb_device*,int ,int ,int *) ;
 TYPE_6__* usb_alloc_urb (int ,int ) ;
 int usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (TYPE_6__*,struct usb_device*,int,int ,int,int ,struct usb_onetouch*,int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (TYPE_6__*) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_maxpacket (struct usb_device*,int,int ) ;
 int usb_onetouch_close ;
 int usb_onetouch_irq ;
 int usb_onetouch_open ;
 int usb_onetouch_pm_hook ;
 int usb_pipeout (int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int onetouch_connect_input(struct us_data *ss)
{
 struct usb_device *udev = ss->pusb_dev;
 struct usb_host_interface *interface;
 struct usb_endpoint_descriptor *endpoint;
 struct usb_onetouch *onetouch;
 struct input_dev *input_dev;
 int pipe, maxp;
 int error = -ENOMEM;

 interface = ss->pusb_intf->cur_altsetting;

 if (interface->desc.bNumEndpoints != 3)
  return -ENODEV;

 endpoint = &interface->endpoint[2].desc;
 if (!usb_endpoint_is_int_in(endpoint))
  return -ENODEV;

 pipe = usb_rcvintpipe(udev, endpoint->bEndpointAddress);
 maxp = usb_maxpacket(udev, pipe, usb_pipeout(pipe));
 maxp = min(maxp, ONETOUCH_PKT_LEN);

 onetouch = kzalloc(sizeof(struct usb_onetouch), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!onetouch || !input_dev)
  goto fail1;

 onetouch->data = usb_alloc_coherent(udev, ONETOUCH_PKT_LEN,
         GFP_KERNEL, &onetouch->data_dma);
 if (!onetouch->data)
  goto fail1;

 onetouch->irq = usb_alloc_urb(0, GFP_KERNEL);
 if (!onetouch->irq)
  goto fail2;

 onetouch->udev = udev;
 onetouch->dev = input_dev;

 if (udev->manufacturer)
  strlcpy(onetouch->name, udev->manufacturer,
   sizeof(onetouch->name));
 if (udev->product) {
  if (udev->manufacturer)
   strlcat(onetouch->name, " ", sizeof(onetouch->name));
  strlcat(onetouch->name, udev->product, sizeof(onetouch->name));
 }

 if (!strlen(onetouch->name))
  snprintf(onetouch->name, sizeof(onetouch->name),
    "Maxtor Onetouch %04x:%04x",
    le16_to_cpu(udev->descriptor.idVendor),
    le16_to_cpu(udev->descriptor.idProduct));

 usb_make_path(udev, onetouch->phys, sizeof(onetouch->phys));
 strlcat(onetouch->phys, "/input0", sizeof(onetouch->phys));

 input_dev->name = onetouch->name;
 input_dev->phys = onetouch->phys;
 usb_to_input_id(udev, &input_dev->id);
 input_dev->dev.parent = &udev->dev;

 set_bit(EV_KEY, input_dev->evbit);
 set_bit(ONETOUCH_BUTTON, input_dev->keybit);
 clear_bit(0, input_dev->keybit);

 input_set_drvdata(input_dev, onetouch);

 input_dev->open = usb_onetouch_open;
 input_dev->close = usb_onetouch_close;

 usb_fill_int_urb(onetouch->irq, udev, pipe, onetouch->data, maxp,
    usb_onetouch_irq, onetouch, endpoint->bInterval);
 onetouch->irq->transfer_dma = onetouch->data_dma;
 onetouch->irq->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 ss->extra_destructor = onetouch_release_input;
 ss->extra = onetouch;




 error = input_register_device(onetouch->dev);
 if (error)
  goto fail3;

 return 0;

 fail3: usb_free_urb(onetouch->irq);
 fail2: usb_free_coherent(udev, ONETOUCH_PKT_LEN,
     onetouch->data, onetouch->data_dma);
 fail1: kfree(onetouch);
 input_free_device(input_dev);
 return error;
}
