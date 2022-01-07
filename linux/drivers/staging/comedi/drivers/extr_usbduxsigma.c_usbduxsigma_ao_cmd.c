
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsigma_private {int ao_timer; int ao_counter; int ao_cmd_running; int mut; int n_ao_urbs; int ao_urbs; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct comedi_cmd {int scan_begin_arg; scalar_t__ start_src; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 scalar_t__ TRIG_NOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * usbduxsigma_ao_inttrig ;
 int usbduxsigma_submit_urbs (struct comedi_device*,int ,int ,int ) ;

__attribute__((used)) static int usbduxsigma_ao_cmd(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct usbduxsigma_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int ret;

 mutex_lock(&devpriv->mut);







 devpriv->ao_timer = cmd->scan_begin_arg / 1000000;

 devpriv->ao_counter = devpriv->ao_timer;

 if (cmd->start_src == TRIG_NOW) {

  devpriv->ao_cmd_running = 1;
  ret = usbduxsigma_submit_urbs(dev, devpriv->ao_urbs,
           devpriv->n_ao_urbs, 0);
  if (ret < 0) {
   devpriv->ao_cmd_running = 0;
   mutex_unlock(&devpriv->mut);
   return ret;
  }
  s->async->inttrig = ((void*)0);
 } else {
  s->async->inttrig = usbduxsigma_ao_inttrig;
 }

 mutex_unlock(&devpriv->mut);

 return 0;
}
