
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbdux_private {int ao_cmd_running; int ao_timer; int ao_counter; int mut; int n_ao_urbs; int ao_urbs; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct usbdux_private* private; } ;
struct comedi_cmd {int convert_arg; int scan_begin_arg; scalar_t__ start_src; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ TRIG_NOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * usbdux_ao_inttrig ;
 int usbdux_submit_urbs (struct comedi_device*,int ,int ,int ) ;

__attribute__((used)) static int usbdux_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct usbdux_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int ret = -EBUSY;

 mutex_lock(&devpriv->mut);

 if (devpriv->ao_cmd_running)
  goto ao_cmd_exit;



 if (0) {


  devpriv->ao_timer = cmd->convert_arg / 125000;
 } else {


  devpriv->ao_timer = cmd->scan_begin_arg / 1000000;
  if (devpriv->ao_timer < 1) {
   ret = -EINVAL;
   goto ao_cmd_exit;
  }
 }

 devpriv->ao_counter = devpriv->ao_timer;

 if (cmd->start_src == TRIG_NOW) {

  devpriv->ao_cmd_running = 1;
  ret = usbdux_submit_urbs(dev, devpriv->ao_urbs,
      devpriv->n_ao_urbs, 0);
  if (ret < 0) {
   devpriv->ao_cmd_running = 0;

   goto ao_cmd_exit;
  }
  s->async->inttrig = ((void*)0);
 } else {



  s->async->inttrig = usbdux_ao_inttrig;
 }

ao_cmd_exit:
 mutex_unlock(&devpriv->mut);

 return ret;
}
