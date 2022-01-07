
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {unsigned long iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ PCMMIO_AO_2ND_DAC_OFFSET ;
 unsigned char PCMMIO_AO_CMD_CHAN_SEL (unsigned int) ;
 scalar_t__ PCMMIO_AO_CMD_REG ;
 unsigned char PCMMIO_AO_CMD_WR_CODE_UPDATE ;
 unsigned char PCMMIO_AO_CMD_WR_SPAN_UPDATE ;
 scalar_t__ PCMMIO_AO_LSB_REG ;
 unsigned char PCMMIO_AO_LSB_SPAN (unsigned int) ;
 scalar_t__ PCMMIO_AO_MSB_REG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int outb (unsigned char,scalar_t__) ;
 int pcmmio_ao_eoc ;

__attribute__((used)) static int pcmmio_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned long iobase = dev->iobase;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned char cmd = 0;
 int ret;
 int i;






 if (chan > 3) {
  cmd |= PCMMIO_AO_CMD_CHAN_SEL(chan - 4);
  iobase += PCMMIO_AO_2ND_DAC_OFFSET;
 } else {
  cmd |= PCMMIO_AO_CMD_CHAN_SEL(chan);
 }


 outb(PCMMIO_AO_LSB_SPAN(range), iobase + PCMMIO_AO_LSB_REG);
 outb(0, iobase + PCMMIO_AO_MSB_REG);
 outb(cmd | PCMMIO_AO_CMD_WR_SPAN_UPDATE, iobase + PCMMIO_AO_CMD_REG);

 ret = comedi_timeout(dev, s, insn, pcmmio_ao_eoc, 0);
 if (ret)
  return ret;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];


  outb(val & 0xff, iobase + PCMMIO_AO_LSB_REG);
  outb((val >> 8) & 0xff, iobase + PCMMIO_AO_MSB_REG);
  outb(cmd | PCMMIO_AO_CMD_WR_CODE_UPDATE,
       iobase + PCMMIO_AO_CMD_REG);

  ret = comedi_timeout(dev, s, insn, pcmmio_ao_eoc, 0);
  if (ret)
   return ret;

  s->readback[chan] = val;
 }

 return insn->n;
}
