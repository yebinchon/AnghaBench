
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ FL512_AI_LSB_REG ;
 scalar_t__ FL512_AI_MSB_REG ;
 scalar_t__ FL512_AI_MUX_REG ;
 scalar_t__ FL512_AI_START_CONV_REG ;
 int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int fl512_ai_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val;
 int i;

 outb(chan, dev->iobase + FL512_AI_MUX_REG);

 for (i = 0; i < insn->n; i++) {
  outb(0, dev->iobase + FL512_AI_START_CONV_REG);


  usleep_range(30, 100);

  val = inb(dev->iobase + FL512_AI_LSB_REG);
  val |= (inb(dev->iobase + FL512_AI_MSB_REG) << 8);
  val &= s->maxdata;

  data[i] = val;
 }

 return insn->n;
}
