
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbdux_private {scalar_t__ ao_counter; scalar_t__ ao_timer; scalar_t__ high_speed; } ;
struct urb {int interval; int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ status; int dev; void* transfer_buffer_length; int * transfer_buffer; } ;
struct comedi_subdevice {unsigned short* readback; struct comedi_async* async; } ;
struct comedi_device {int class_dev; struct usbdux_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; int chanlist_len; int * chanlist; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {scalar_t__ status; void* length; scalar_t__ offset; } ;


 int COMEDI_CB_CANCEL_MASK ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int COMEDI_CB_OVERFLOW ;
 unsigned int CR_CHAN (int ) ;
 int EL2NSYNC ;
 int GFP_ATOMIC ;
 void* SIZEOUTBUF ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_read_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int comedi_to_usb_dev (struct comedi_device*) ;
 int dev_err (int ,char*,...) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void usbduxsub_ao_handle_urb(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct urb *urb)
{
 struct usbdux_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 u8 *datap;
 int ret;
 int i;

 devpriv->ao_counter--;
 if (devpriv->ao_counter == 0) {
  devpriv->ao_counter = devpriv->ao_timer;

  if (cmd->stop_src == TRIG_COUNT &&
      async->scans_done >= cmd->stop_arg) {
   async->events |= COMEDI_CB_EOA;
   return;
  }


  datap = urb->transfer_buffer;
  *datap++ = cmd->chanlist_len;
  for (i = 0; i < cmd->chanlist_len; i++) {
   unsigned int chan = CR_CHAN(cmd->chanlist[i]);
   unsigned short val;

   if (!comedi_buf_read_samples(s, &val, 1)) {
    dev_err(dev->class_dev, "buffer underflow\n");
    async->events |= COMEDI_CB_OVERFLOW;
    return;
   }


   *datap++ = val & 0xff;
   *datap++ = (val >> 8) & 0xff;
   *datap++ = chan << 6;
   s->readback[chan] = val;
  }
 }


 if (!(async->events & COMEDI_CB_CANCEL_MASK)) {
  urb->transfer_buffer_length = SIZEOUTBUF;
  urb->dev = comedi_to_usb_dev(dev);
  urb->status = 0;
  if (devpriv->high_speed)
   urb->interval = 8;
  else
   urb->interval = 1;
  urb->number_of_packets = 1;
  urb->iso_frame_desc[0].offset = 0;
  urb->iso_frame_desc[0].length = SIZEOUTBUF;
  urb->iso_frame_desc[0].status = 0;
  ret = usb_submit_urb(urb, GFP_ATOMIC);
  if (ret < 0) {
   dev_err(dev->class_dev,
    "ao urb resubm failed in int-cont. ret=%d",
    ret);
   if (ret == -EL2NSYNC)
    dev_err(dev->class_dev,
     "buggy USB host controller or bug in IRQ handling!\n");
   async->events |= COMEDI_CB_ERROR;
  }
 }
}
