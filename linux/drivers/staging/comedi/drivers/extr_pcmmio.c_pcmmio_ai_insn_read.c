
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {unsigned long iobase; } ;


 unsigned int AREF_GROUND ;
 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ PCMMIO_AI_2ND_ADC_OFFSET ;
 unsigned char PCMMIO_AI_CMD_CHAN_SEL (unsigned int) ;
 unsigned char PCMMIO_AI_CMD_ODD_CHAN ;
 unsigned char PCMMIO_AI_CMD_RANGE (unsigned int) ;
 scalar_t__ PCMMIO_AI_CMD_REG ;
 unsigned char PCMMIO_AI_CMD_SE ;
 scalar_t__ PCMMIO_AI_LSB_REG ;
 scalar_t__ PCMMIO_AI_MSB_REG ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 int pcmmio_ai_eoc ;

__attribute__((used)) static int pcmmio_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned long iobase = dev->iobase;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int aref = CR_AREF(insn->chanspec);
 unsigned char cmd = 0;
 unsigned int val;
 int ret;
 int i;
 if (chan > 7) {
  chan -= 8;
  iobase += PCMMIO_AI_2ND_ADC_OFFSET;
 }

 if (aref == AREF_GROUND)
  cmd |= PCMMIO_AI_CMD_SE;
 if (chan % 2)
  cmd |= PCMMIO_AI_CMD_ODD_CHAN;
 cmd |= PCMMIO_AI_CMD_CHAN_SEL(chan / 2);
 cmd |= PCMMIO_AI_CMD_RANGE(range);

 outb(cmd, iobase + PCMMIO_AI_CMD_REG);

 ret = comedi_timeout(dev, s, insn, pcmmio_ai_eoc, 0);
 if (ret)
  return ret;

 val = inb(iobase + PCMMIO_AI_LSB_REG);
 val |= inb(iobase + PCMMIO_AI_MSB_REG) << 8;

 for (i = 0; i < insn->n; i++) {
  outb(cmd, iobase + PCMMIO_AI_CMD_REG);

  ret = comedi_timeout(dev, s, insn, pcmmio_ai_eoc, 0);
  if (ret)
   return ret;

  val = inb(iobase + PCMMIO_AI_LSB_REG);
  val |= inb(iobase + PCMMIO_AI_MSB_REG) << 8;


  if (comedi_range_is_bipolar(s, range))
   val = comedi_offset_munge(s, val);

  data[i] = val;
 }

 return insn->n;
}
