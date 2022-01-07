
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ PCMAD_CONVERT ;
 scalar_t__ PCMAD_LSB ;
 scalar_t__ PCMAD_MSB ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 int pcmad_ai_eoc ;

__attribute__((used)) static int pcmad_ai_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val;
 int ret;
 int i;

 for (i = 0; i < insn->n; i++) {
  outb(chan, dev->iobase + PCMAD_CONVERT);

  ret = comedi_timeout(dev, s, insn, pcmad_ai_eoc, 0);
  if (ret)
   return ret;

  val = inb(dev->iobase + PCMAD_LSB) |
        (inb(dev->iobase + PCMAD_MSB) << 8);


  if (s->maxdata == 0x0fff)
   val >>= 4;

  if (comedi_range_is_bipolar(s, range)) {

   val ^= ((s->maxdata + 1) >> 1);
  }

  data[i] = val;
 }

 return insn->n;
}
