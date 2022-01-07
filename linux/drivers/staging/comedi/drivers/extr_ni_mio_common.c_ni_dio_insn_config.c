
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int dio_control; } ;
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct ni_private* private; } ;


 int NISTC_DIO_CTRL_DIR (int ) ;
 int NISTC_DIO_CTRL_DIR_MASK ;
 int NISTC_DIO_CTRL_REG ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int ) ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_dio_insn_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct ni_private *devpriv = dev->private;
 int ret;

 ret = comedi_dio_insn_config(dev, s, insn, data, 0);
 if (ret)
  return ret;

 devpriv->dio_control &= ~NISTC_DIO_CTRL_DIR_MASK;
 devpriv->dio_control |= NISTC_DIO_CTRL_DIR(s->io_bits);
 ni_stc_writew(dev, devpriv->dio_control, NISTC_DIO_CTRL_REG);

 return insn->n;
}
