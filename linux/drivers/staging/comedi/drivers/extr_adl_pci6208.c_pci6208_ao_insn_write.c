
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ PCI6208_AO_CONTROL (unsigned int) ;
 int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int outw (int ,scalar_t__) ;
 int pci6208_ao_eoc ;

__attribute__((used)) static int pci6208_ao_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int ret;
 int i;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];


  ret = comedi_timeout(dev, s, insn, pci6208_ao_eoc, 0);
  if (ret)
   return ret;


  outw(comedi_offset_munge(s, val),
       dev->iobase + PCI6208_AO_CONTROL(chan));

  s->readback[chan] = val;
 }

 return insn->n;
}
