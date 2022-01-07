
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int mut; int * insn_buf; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct usbdux_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int USBDUX_CMD_TIMER_RD ;
 unsigned int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int receive_dux_commands (struct comedi_device*,int ) ;
 int send_dux_commands (struct comedi_device*,int ) ;

__attribute__((used)) static int usbdux_counter_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct usbdux_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 int ret = 0;
 int i;

 mutex_lock(&devpriv->mut);

 for (i = 0; i < insn->n; i++) {
  ret = send_dux_commands(dev, USBDUX_CMD_TIMER_RD);
  if (ret < 0)
   goto counter_read_exit;
  ret = receive_dux_commands(dev, USBDUX_CMD_TIMER_RD);
  if (ret < 0)
   goto counter_read_exit;

  data[i] = le16_to_cpu(devpriv->insn_buf[chan + 1]);
 }

counter_read_exit:
 mutex_unlock(&devpriv->mut);

 return ret ? ret : insn->n;
}
