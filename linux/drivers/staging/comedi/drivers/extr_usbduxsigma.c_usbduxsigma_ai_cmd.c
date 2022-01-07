
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct usbduxsigma_private {unsigned int ai_interval; int ai_timer; int* dux_commands; int ai_counter; int ai_cmd_running; int mut; int n_ai_urbs; int ai_urbs; scalar_t__ high_speed; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; int scan_begin_arg; scalar_t__ start_src; int * chanlist; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ TRIG_NOW ;
 int USBBUXSIGMA_AD_CMD ;
 int create_adc_command (unsigned int,void**,void**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbbuxsigma_send_cmd (struct comedi_device*,int ) ;
 int * usbduxsigma_ai_inttrig ;
 unsigned int usbduxsigma_chans_to_interval (unsigned int) ;
 int usbduxsigma_submit_urbs (struct comedi_device*,int ,int ,int) ;

__attribute__((used)) static int usbduxsigma_ai_cmd(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct usbduxsigma_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int len = cmd->chanlist_len;
 u8 muxsg0 = 0;
 u8 muxsg1 = 0;
 u8 sysred = 0;
 int ret;
 int i;

 mutex_lock(&devpriv->mut);

 if (devpriv->high_speed) {





  unsigned int interval = usbduxsigma_chans_to_interval(len);

  devpriv->ai_interval = interval;
  devpriv->ai_timer = cmd->scan_begin_arg / (125000 * interval);
 } else {

  devpriv->ai_interval = 1;
  devpriv->ai_timer = cmd->scan_begin_arg / 1000000;
 }

 for (i = 0; i < len; i++) {
  unsigned int chan = CR_CHAN(cmd->chanlist[i]);

  create_adc_command(chan, &muxsg0, &muxsg1);
 }

 devpriv->dux_commands[1] = devpriv->ai_interval;
 devpriv->dux_commands[2] = len;
 devpriv->dux_commands[3] = 0x12;
 devpriv->dux_commands[4] = 0x03;
 devpriv->dux_commands[5] = 0x00;
 devpriv->dux_commands[6] = muxsg0;
 devpriv->dux_commands[7] = muxsg1;
 devpriv->dux_commands[8] = sysred;

 ret = usbbuxsigma_send_cmd(dev, USBBUXSIGMA_AD_CMD);
 if (ret < 0) {
  mutex_unlock(&devpriv->mut);
  return ret;
 }

 devpriv->ai_counter = devpriv->ai_timer;

 if (cmd->start_src == TRIG_NOW) {

  devpriv->ai_cmd_running = 1;
  ret = usbduxsigma_submit_urbs(dev, devpriv->ai_urbs,
           devpriv->n_ai_urbs, 1);
  if (ret < 0) {
   devpriv->ai_cmd_running = 0;
   mutex_unlock(&devpriv->mut);
   return ret;
  }
  s->async->inttrig = ((void*)0);
 } else {
  s->async->inttrig = usbduxsigma_ai_inttrig;
 }

 mutex_unlock(&devpriv->mut);

 return 0;
}
