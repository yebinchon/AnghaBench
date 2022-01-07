
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ ADCLEAR_R ;
 scalar_t__ ADFIFO_R ;
 unsigned int AREF_DIFF ;
 scalar_t__ CMD_R1 ;
 scalar_t__ CMD_R2 ;
 scalar_t__ CMD_R3 ;
 unsigned int CMD_R3_DIFF ;
 scalar_t__ CMO_R ;
 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int daq700_ai_eoc ;
 int inw (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int daq700_ai_rinsn(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int d;
 int ret;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int aref = CR_AREF(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int r3_bits = 0;


 if (aref == AREF_DIFF)
  r3_bits |= CMD_R3_DIFF;

 if (range >= 1)
  range++;
 outb(r3_bits | (range & 0x03), dev->iobase + CMD_R3);



 outb(chan | 0x80, dev->iobase + CMD_R1);

 udelay(2);


 for (n = 0; n < insn->n; n++) {

  outb(0x00, dev->iobase + CMD_R2);
  outb(0x30, dev->iobase + CMO_R);
  outb(0x00, dev->iobase + ADCLEAR_R);

  inw(dev->iobase + ADFIFO_R);

  outb(0x32, dev->iobase + CMO_R);


  ret = comedi_timeout(dev, s, insn, daq700_ai_eoc, 0);
  if (ret)
   return ret;


  d = inw(dev->iobase + ADFIFO_R);


  d &= 0x0fff;
  d ^= 0x0800;
  data[n] = d;
 }
 return n;
}
