
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbduxsigma_private {scalar_t__ ai_counter; scalar_t__ ai_timer; int * in_buf; } ;
struct urb {scalar_t__ actual_length; int dev; int status; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int class_dev; struct usbduxsigma_private* private; } ;
struct comedi_cmd {int chanlist_len; scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_CANCEL_MASK ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int EL2NSYNC ;
 int EXDEV ;
 int GFP_ATOMIC ;
 scalar_t__ TRIG_COUNT ;
 int be32_to_cpu (int ) ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int*,int) ;
 int comedi_offset_munge (struct comedi_subdevice*,int) ;
 int comedi_to_usb_dev (struct comedi_device*) ;
 int dev_err (int ,char*,...) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void usbduxsigma_ai_handle_urb(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct urb *urb)
{
 struct usbduxsigma_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 u32 val;
 int ret;
 int i;

 if ((urb->actual_length > 0) && (urb->status != -EXDEV)) {
  devpriv->ai_counter--;
  if (devpriv->ai_counter == 0) {
   devpriv->ai_counter = devpriv->ai_timer;





   for (i = 0; i < cmd->chanlist_len; i++) {
    val = be32_to_cpu(devpriv->in_buf[i + 1]);
    val &= 0x00ffffff;
    val = comedi_offset_munge(s, val);
    if (!comedi_buf_write_samples(s, &val, 1))
     return;
   }

   if (cmd->stop_src == TRIG_COUNT &&
       async->scans_done >= cmd->stop_arg)
    async->events |= COMEDI_CB_EOA;
  }
 }


 if (!(async->events & COMEDI_CB_CANCEL_MASK)) {
  urb->dev = comedi_to_usb_dev(dev);
  ret = usb_submit_urb(urb, GFP_ATOMIC);
  if (ret < 0) {
   dev_err(dev->class_dev, "urb resubmit failed (%d)\n",
    ret);
   if (ret == -EL2NSYNC)
    dev_err(dev->class_dev,
     "buggy USB host controller or bug in IRQ handler\n");
   async->events |= COMEDI_CB_ERROR;
  }
 }
}
