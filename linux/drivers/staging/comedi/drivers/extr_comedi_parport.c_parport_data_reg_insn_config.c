
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int PARPORT_CTRL_BIDIR_ENA ;
 scalar_t__ PARPORT_CTRL_REG ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int) ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int parport_data_reg_insn_config(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned int ctrl;
 int ret;

 ret = comedi_dio_insn_config(dev, s, insn, data, 0xff);
 if (ret)
  return ret;

 ctrl = inb(dev->iobase + PARPORT_CTRL_REG);
 if (s->io_bits)
  ctrl &= ~PARPORT_CTRL_BIDIR_ENA;
 else
  ctrl |= PARPORT_CTRL_BIDIR_ENA;
 outb(ctrl, dev->iobase + PARPORT_CTRL_REG);

 return insn->n;
}
