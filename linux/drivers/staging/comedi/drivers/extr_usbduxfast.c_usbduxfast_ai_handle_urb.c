
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxfast_private {scalar_t__ ignore; } ;
struct urb {scalar_t__ status; int dev; int transfer_buffer; int actual_length; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int class_dev; struct usbduxfast_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_CANCEL_MASK ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int GFP_ATOMIC ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int ,unsigned int) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,int ) ;
 unsigned int comedi_nsamples_left (struct comedi_subdevice*,unsigned int) ;
 int comedi_to_usb_dev (struct comedi_device*) ;
 int dev_err (int ,char*,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void usbduxfast_ai_handle_urb(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct urb *urb)
{
 struct usbduxfast_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 int ret;

 if (devpriv->ignore) {
  devpriv->ignore--;
 } else {
  unsigned int nsamples;

  nsamples = comedi_bytes_to_samples(s, urb->actual_length);
  nsamples = comedi_nsamples_left(s, nsamples);
  comedi_buf_write_samples(s, urb->transfer_buffer, nsamples);

  if (cmd->stop_src == TRIG_COUNT &&
      async->scans_done >= cmd->stop_arg)
   async->events |= COMEDI_CB_EOA;
 }


 if (!(async->events & COMEDI_CB_CANCEL_MASK)) {
  urb->dev = comedi_to_usb_dev(dev);
  urb->status = 0;
  ret = usb_submit_urb(urb, GFP_ATOMIC);
  if (ret < 0) {
   dev_err(dev->class_dev, "urb resubm failed: %d", ret);
   async->events |= COMEDI_CB_ERROR;
  }
 }
}
