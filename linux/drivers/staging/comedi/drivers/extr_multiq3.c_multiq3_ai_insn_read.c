
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ MULTIQ3_AI_CONV_REG ;
 scalar_t__ MULTIQ3_AI_REG ;
 int MULTIQ3_CTRL_AI_CHAN (unsigned int) ;
 int MULTIQ3_CTRL_EN ;
 int MULTIQ3_STATUS_EOC ;
 int MULTIQ3_STATUS_EOC_I ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inb (scalar_t__) ;
 int multiq3_ai_status ;
 int multiq3_set_ctrl (struct comedi_device*,int) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int multiq3_ai_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val;
 int ret;
 int i;

 multiq3_set_ctrl(dev, MULTIQ3_CTRL_EN | MULTIQ3_CTRL_AI_CHAN(chan));

 ret = comedi_timeout(dev, s, insn, multiq3_ai_status,
        MULTIQ3_STATUS_EOC);
 if (ret)
  return ret;

 for (i = 0; i < insn->n; i++) {
  outw(0, dev->iobase + MULTIQ3_AI_CONV_REG);

  ret = comedi_timeout(dev, s, insn, multiq3_ai_status,
         MULTIQ3_STATUS_EOC_I);
  if (ret)
   return ret;


  val = inb(dev->iobase + MULTIQ3_AI_REG) << 8;
  val |= inb(dev->iobase + MULTIQ3_AI_REG);
  val &= s->maxdata;


  data[i] = comedi_offset_munge(s, val);
 }

 return insn->n;
}
