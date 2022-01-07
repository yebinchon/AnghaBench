
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int NI660X_DIO32_INPUT ;
 int NI660X_DIO32_OUTPUT ;
 unsigned int ni_660x_read (struct comedi_device*,int ,int ) ;
 int ni_660x_write (struct comedi_device*,int ,unsigned int,int ) ;

__attribute__((used)) static int ni_660x_dio_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned int shift = CR_CHAN(insn->chanspec);
 unsigned int mask = data[0] << shift;
 unsigned int bits = data[1] << shift;







 if (mask) {
  s->state &= ~mask;
  s->state |= (bits & mask);
  ni_660x_write(dev, 0, s->state, NI660X_DIO32_OUTPUT);
 }





 data[1] = ni_660x_read(dev, 0, NI660X_DIO32_INPUT) >> shift;

 return insn->n;
}
