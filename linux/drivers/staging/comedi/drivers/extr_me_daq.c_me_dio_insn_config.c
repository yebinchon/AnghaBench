
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct me_private_data {int ctrl2; } ;
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; struct me_private_data* private; } ;


 unsigned int CR_CHAN (int ) ;
 int ME_CTRL2_PORT_A_ENA ;
 int ME_CTRL2_PORT_B_ENA ;
 scalar_t__ ME_CTRL2_REG ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int me_dio_insn_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct me_private_data *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask;
 int ret;

 if (chan < 16)
  mask = 0x0000ffff;
 else
  mask = 0xffff0000;

 ret = comedi_dio_insn_config(dev, s, insn, data, mask);
 if (ret)
  return ret;

 if (s->io_bits & 0x0000ffff)
  devpriv->ctrl2 |= ME_CTRL2_PORT_A_ENA;
 else
  devpriv->ctrl2 &= ~ME_CTRL2_PORT_A_ENA;
 if (s->io_bits & 0xffff0000)
  devpriv->ctrl2 |= ME_CTRL2_PORT_B_ENA;
 else
  devpriv->ctrl2 &= ~ME_CTRL2_PORT_B_ENA;

 writew(devpriv->ctrl2, dev->mmio + ME_CTRL2_REG);

 return insn->n;
}
