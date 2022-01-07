
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DT2814_CSR ;
 unsigned int DT2814_FINISH ;
 int EBUSY ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int dt2814_ai_eoc(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + DT2814_CSR);
 if (status & DT2814_FINISH)
  return 0;
 return -EBUSY;
}
