
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbdux_private {int n_ai_urbs; int n_ao_urbs; void* pwm_buf_sz; struct urb* pwm_urb; scalar_t__ high_speed; struct urb** ao_urbs; struct urb** ai_urbs; void* insn_buf; void* in_buf; void* dux_commands; } ;
struct usb_device {int dummy; } ;
struct urb {int number_of_packets; int interval; void* transfer_buffer; TYPE_1__* iso_frame_desc; void* transfer_buffer_length; int complete; void* transfer_flags; int pipe; struct comedi_device* context; struct usb_device* dev; } ;
struct comedi_device {struct usbdux_private* private; } ;
struct TYPE_2__ {void* length; scalar_t__ offset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* SIZEINBUF ;
 void* SIZEINSNBUF ;
 void* SIZEOFDUXBUFFER ;
 void* SIZEOUTBUF ;
 void* URB_ISO_ASAP ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 void* kcalloc (int,int,int ) ;
 void* kzalloc (void*,int ) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_rcvisocpipe (struct usb_device*,int) ;
 int usb_sndisocpipe (struct usb_device*,int) ;
 int usbduxsub_ai_isoc_irq ;
 int usbduxsub_ao_isoc_irq ;

__attribute__((used)) static int usbdux_alloc_usb_buffers(struct comedi_device *dev)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct usbdux_private *devpriv = dev->private;
 struct urb *urb;
 int i;

 devpriv->dux_commands = kzalloc(SIZEOFDUXBUFFER, GFP_KERNEL);
 devpriv->in_buf = kzalloc(SIZEINBUF, GFP_KERNEL);
 devpriv->insn_buf = kzalloc(SIZEINSNBUF, GFP_KERNEL);
 devpriv->ai_urbs = kcalloc(devpriv->n_ai_urbs, sizeof(void *),
       GFP_KERNEL);
 devpriv->ao_urbs = kcalloc(devpriv->n_ao_urbs, sizeof(void *),
       GFP_KERNEL);
 if (!devpriv->dux_commands || !devpriv->in_buf || !devpriv->insn_buf ||
     !devpriv->ai_urbs || !devpriv->ao_urbs)
  return -ENOMEM;

 for (i = 0; i < devpriv->n_ai_urbs; i++) {

  urb = usb_alloc_urb(1, GFP_KERNEL);
  if (!urb)
   return -ENOMEM;
  devpriv->ai_urbs[i] = urb;

  urb->dev = usb;
  urb->context = dev;
  urb->pipe = usb_rcvisocpipe(usb, 6);
  urb->transfer_flags = URB_ISO_ASAP;
  urb->transfer_buffer = kzalloc(SIZEINBUF, GFP_KERNEL);
  if (!urb->transfer_buffer)
   return -ENOMEM;

  urb->complete = usbduxsub_ai_isoc_irq;
  urb->number_of_packets = 1;
  urb->transfer_buffer_length = SIZEINBUF;
  urb->iso_frame_desc[0].offset = 0;
  urb->iso_frame_desc[0].length = SIZEINBUF;
 }

 for (i = 0; i < devpriv->n_ao_urbs; i++) {

  urb = usb_alloc_urb(1, GFP_KERNEL);
  if (!urb)
   return -ENOMEM;
  devpriv->ao_urbs[i] = urb;

  urb->dev = usb;
  urb->context = dev;
  urb->pipe = usb_sndisocpipe(usb, 2);
  urb->transfer_flags = URB_ISO_ASAP;
  urb->transfer_buffer = kzalloc(SIZEOUTBUF, GFP_KERNEL);
  if (!urb->transfer_buffer)
   return -ENOMEM;

  urb->complete = usbduxsub_ao_isoc_irq;
  urb->number_of_packets = 1;
  urb->transfer_buffer_length = SIZEOUTBUF;
  urb->iso_frame_desc[0].offset = 0;
  urb->iso_frame_desc[0].length = SIZEOUTBUF;
  if (devpriv->high_speed)
   urb->interval = 8;
  else
   urb->interval = 1;
 }


 if (devpriv->pwm_buf_sz) {
  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb)
   return -ENOMEM;
  devpriv->pwm_urb = urb;


  urb->transfer_buffer = kzalloc(devpriv->pwm_buf_sz,
            GFP_KERNEL);
  if (!urb->transfer_buffer)
   return -ENOMEM;
 }

 return 0;
}
