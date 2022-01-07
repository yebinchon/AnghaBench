
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ AD_CLEAR_REG ;
 int EBUSY ;
 int EOVERFLOW ;
 unsigned int STAT_AD_CONVAVAIL ;
 unsigned int STAT_AD_OVERFLOW ;
 scalar_t__ STAT_REG ;
 unsigned int inw (scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int atmio16d_ai_eoc(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned long context)
{
 unsigned int status;

 status = inw(dev->iobase + STAT_REG);
 if (status & STAT_AD_CONVAVAIL)
  return 0;
 if (status & STAT_AD_OVERFLOW) {
  outw(0, dev->iobase + AD_CLEAR_REG);
  return -EOVERFLOW;
 }
 return -EBUSY;
}
