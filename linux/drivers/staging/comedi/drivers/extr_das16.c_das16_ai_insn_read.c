
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ DAS16_AI_LSB_REG ;
 scalar_t__ DAS16_AI_MSB_REG ;
 scalar_t__ DAS16_TRIG_REG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int das16_ai_eoc ;
 int das16_ai_set_mux_range (struct comedi_device*,unsigned int,unsigned int,unsigned int) ;
 unsigned int inb (scalar_t__) ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static int das16_ai_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val;
 int ret;
 int i;


 das16_ai_set_mux_range(dev, chan, chan, range);

 for (i = 0; i < insn->n; i++) {

  outb_p(0, dev->iobase + DAS16_TRIG_REG);

  ret = comedi_timeout(dev, s, insn, das16_ai_eoc, 0);
  if (ret)
   return ret;

  val = inb(dev->iobase + DAS16_AI_MSB_REG) << 8;
  val |= inb(dev->iobase + DAS16_AI_LSB_REG);
  if (s->maxdata == 0x0fff)
   val >>= 4;
  val &= s->maxdata;

  data[i] = val;
 }

 return insn->n;
}
