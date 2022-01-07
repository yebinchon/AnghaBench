
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int AIO12_8_DAC_ENABLE_REF_ENA ;
 scalar_t__ AIO12_8_DAC_ENABLE_REG ;
 scalar_t__ AIO12_8_DAC_REG (unsigned int) ;
 unsigned int CR_CHAN (int ) ;
 int outb (int ,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int aio_aio12_8_ao_insn_write(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 int i;


 outb(AIO12_8_DAC_ENABLE_REF_ENA, dev->iobase + AIO12_8_DAC_ENABLE_REG);

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  outw(val, dev->iobase + AIO12_8_DAC_REG(chan));
 }
 s->readback[chan] = val;

 return insn->n;
}
