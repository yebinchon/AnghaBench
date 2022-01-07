
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 scalar_t__ PCMAD_STATUS ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int pcmad_ai_eoc(struct comedi_device *dev,
   struct comedi_subdevice *s,
   struct comedi_insn *insn,
   unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + PCMAD_STATUS);
 if ((status & 0x3) == 0x3)
  return 0;
 return -EBUSY;
}
