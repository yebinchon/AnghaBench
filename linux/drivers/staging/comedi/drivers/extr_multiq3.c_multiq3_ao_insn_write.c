
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ MULTIQ3_AO_REG ;
 int MULTIQ3_CTRL_AO_CHAN (unsigned int) ;
 int MULTIQ3_CTRL_LD ;
 int multiq3_set_ctrl (struct comedi_device*,int) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int multiq3_ao_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 int i;

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  multiq3_set_ctrl(dev, MULTIQ3_CTRL_LD |
          MULTIQ3_CTRL_AO_CHAN(chan));
  outw(val, dev->iobase + MULTIQ3_AO_REG);
  multiq3_set_ctrl(dev, 0);
 }
 s->readback[chan] = val;

 return insn->n;
}
