
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ PCIMDDA_DA_CHAN (unsigned int) ;
 int comedi_readback_insn_read (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int inw (scalar_t__) ;

__attribute__((used)) static int cb_pcimdda_ao_insn_read(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);


 inw(dev->iobase + PCIMDDA_DA_CHAN(chan));

 return comedi_readback_insn_read(dev, s, insn, data);
}
