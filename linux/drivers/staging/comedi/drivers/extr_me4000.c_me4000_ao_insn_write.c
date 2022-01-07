
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int ME4000_AO_CTRL_IMMEDIATE_STOP ;
 scalar_t__ ME4000_AO_CTRL_REG (unsigned int) ;
 scalar_t__ ME4000_AO_SINGLE_REG (unsigned int) ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static int me4000_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int tmp;


 tmp = inl(dev->iobase + ME4000_AO_CTRL_REG(chan));
 tmp |= ME4000_AO_CTRL_IMMEDIATE_STOP;
 outl(tmp, dev->iobase + ME4000_AO_CTRL_REG(chan));


 outl(0x0, dev->iobase + ME4000_AO_CTRL_REG(chan));


 outl(data[0], dev->iobase + ME4000_AO_SINGLE_REG(chan));


 s->readback[chan] = data[0];

 return 1;
}
