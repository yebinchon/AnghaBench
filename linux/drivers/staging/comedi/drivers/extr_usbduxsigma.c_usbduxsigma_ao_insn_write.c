
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsigma_private {int* dux_commands; int mut; scalar_t__ ao_cmd_running; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int EBUSY ;
 int USBDUXSIGMA_DA_CMD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbbuxsigma_send_cmd (struct comedi_device*,int ) ;

__attribute__((used)) static int usbduxsigma_ao_insn_write(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct usbduxsigma_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 int ret;
 int i;

 mutex_lock(&devpriv->mut);
 if (devpriv->ao_cmd_running) {
  mutex_unlock(&devpriv->mut);
  return -EBUSY;
 }

 for (i = 0; i < insn->n; i++) {
  devpriv->dux_commands[1] = 1;
  devpriv->dux_commands[2] = data[i];
  devpriv->dux_commands[3] = chan;
  ret = usbbuxsigma_send_cmd(dev, USBDUXSIGMA_DA_CMD);
  if (ret < 0) {
   mutex_unlock(&devpriv->mut);
   return ret;
  }
  s->readback[chan] = data[i];
 }
 mutex_unlock(&devpriv->mut);

 return insn->n;
}
