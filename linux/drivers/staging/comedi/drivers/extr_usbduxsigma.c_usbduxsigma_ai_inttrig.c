
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsigma_private {int ai_cmd_running; int mut; int n_ai_urbs; int ai_urbs; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbduxsigma_submit_urbs (struct comedi_device*,int ,int ,int) ;

__attribute__((used)) static int usbduxsigma_ai_inttrig(struct comedi_device *dev,
      struct comedi_subdevice *s,
      unsigned int trig_num)
{
 struct usbduxsigma_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int ret;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 mutex_lock(&devpriv->mut);
 if (!devpriv->ai_cmd_running) {
  devpriv->ai_cmd_running = 1;
  ret = usbduxsigma_submit_urbs(dev, devpriv->ai_urbs,
           devpriv->n_ai_urbs, 1);
  if (ret < 0) {
   devpriv->ai_cmd_running = 0;
   mutex_unlock(&devpriv->mut);
   return ret;
  }
  s->async->inttrig = ((void*)0);
 }
 mutex_unlock(&devpriv->mut);

 return 1;
}
