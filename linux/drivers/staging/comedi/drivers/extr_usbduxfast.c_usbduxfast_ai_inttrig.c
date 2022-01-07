
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxfast_private {int ai_cmd_running; int mut; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int class_dev; struct usbduxfast_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbduxfast_submit_urb (struct comedi_device*) ;

__attribute__((used)) static int usbduxfast_ai_inttrig(struct comedi_device *dev,
     struct comedi_subdevice *s,
     unsigned int trig_num)
{
 struct usbduxfast_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int ret;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 mutex_lock(&devpriv->mut);

 if (!devpriv->ai_cmd_running) {
  devpriv->ai_cmd_running = 1;
  ret = usbduxfast_submit_urb(dev);
  if (ret < 0) {
   dev_err(dev->class_dev, "urbSubmit: err=%d\n", ret);
   devpriv->ai_cmd_running = 0;
   mutex_unlock(&devpriv->mut);
   return ret;
  }
  s->async->inttrig = ((void*)0);
 } else {
  dev_err(dev->class_dev, "ai is already running\n");
 }
 mutex_unlock(&devpriv->mut);
 return 1;
}
