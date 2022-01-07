
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {unsigned int* dux_commands; int mut; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct usbdux_private* private; } ;
typedef int __le16 ;


 unsigned int CR_CHAN (int ) ;
 int USBDUX_CMD_TIMER_WR ;
 int cpu_to_le16 (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_dux_commands (struct comedi_device*,int ) ;

__attribute__((used)) static int usbdux_counter_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct usbdux_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 __le16 *p = (__le16 *)&devpriv->dux_commands[2];
 int ret = 0;
 int i;

 mutex_lock(&devpriv->mut);

 devpriv->dux_commands[1] = chan;

 for (i = 0; i < insn->n; i++) {
  *p = cpu_to_le16(data[i]);

  ret = send_dux_commands(dev, USBDUX_CMD_TIMER_WR);
  if (ret < 0)
   break;
 }

 mutex_unlock(&devpriv->mut);

 return ret ? ret : insn->n;
}
