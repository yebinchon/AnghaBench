
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS16M1_AI_REG ;
 unsigned int DAS16M1_AI_TO_SAMPLE (unsigned short) ;
 scalar_t__ DAS16M1_CLR_INTR_REG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int das16m1_ai_eoc ;
 int das16m1_ai_set_queue (struct comedi_device*,int *,int) ;
 unsigned short inw (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int das16m1_ai_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 int ret;
 int i;

 das16m1_ai_set_queue(dev, &insn->chanspec, 1);

 for (i = 0; i < insn->n; i++) {
  unsigned short val;


  outb(0, dev->iobase + DAS16M1_CLR_INTR_REG);

  outb(0, dev->iobase + DAS16M1_AI_REG);

  ret = comedi_timeout(dev, s, insn, das16m1_ai_eoc, 0);
  if (ret)
   return ret;

  val = inw(dev->iobase + DAS16M1_AI_REG);
  data[i] = DAS16M1_AI_TO_SAMPLE(val);
 }

 return insn->n;
}
