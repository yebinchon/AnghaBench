
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmk80xx_private {unsigned int* usb_rx_buf; int limit_sem; int * usb_tx_buf; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct vmk80xx_private* private; } ;


 int CR_CHAN (int ) ;
 int VMK8061_AO_REG ;
 int VMK8061_CMD_RD_AO ;
 int down (int *) ;
 int up (int *) ;
 scalar_t__ vmk80xx_read_packet (struct comedi_device*) ;

__attribute__((used)) static int vmk80xx_ao_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct vmk80xx_private *devpriv = dev->private;
 int chan;
 int reg;
 int n;

 down(&devpriv->limit_sem);
 chan = CR_CHAN(insn->chanspec);

 reg = VMK8061_AO_REG - 1;

 devpriv->usb_tx_buf[0] = VMK8061_CMD_RD_AO;

 for (n = 0; n < insn->n; n++) {
  if (vmk80xx_read_packet(dev))
   break;

  data[n] = devpriv->usb_rx_buf[reg + chan];
 }

 up(&devpriv->limit_sem);

 return n;
}
