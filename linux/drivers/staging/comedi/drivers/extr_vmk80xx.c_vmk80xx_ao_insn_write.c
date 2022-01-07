
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmk80xx_private {int model; int* usb_tx_buf; int limit_sem; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct vmk80xx_private* private; } ;


 int CR_CHAN (int ) ;
 int VMK8055_AO1_REG ;
 int VMK8055_AO2_REG ;
 int VMK8055_CMD_WRT_AD ;

 int VMK8061_AO_REG ;
 size_t VMK8061_CH_REG ;
 int VMK8061_CMD_SET_AO ;
 int down (int *) ;
 int up (int *) ;
 scalar_t__ vmk80xx_write_packet (struct comedi_device*,int) ;

__attribute__((used)) static int vmk80xx_ao_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct vmk80xx_private *devpriv = dev->private;
 int chan;
 int cmd;
 int reg;
 int n;

 down(&devpriv->limit_sem);
 chan = CR_CHAN(insn->chanspec);

 switch (devpriv->model) {
 case 128:
  cmd = VMK8055_CMD_WRT_AD;
  if (!chan)
   reg = VMK8055_AO1_REG;
  else
   reg = VMK8055_AO2_REG;
  break;
 default:
  cmd = VMK8061_CMD_SET_AO;
  reg = VMK8061_AO_REG;
  devpriv->usb_tx_buf[VMK8061_CH_REG] = chan;
  break;
 }

 for (n = 0; n < insn->n; n++) {
  devpriv->usb_tx_buf[reg] = data[n];

  if (vmk80xx_write_packet(dev, cmd))
   break;
 }

 up(&devpriv->limit_sem);

 return n;
}
