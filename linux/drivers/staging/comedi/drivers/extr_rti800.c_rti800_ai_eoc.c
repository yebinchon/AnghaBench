
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 int EOVERFLOW ;
 scalar_t__ RTI800_CLRFLAGS ;
 scalar_t__ RTI800_CSR ;
 unsigned char RTI800_CSR_DONE ;
 unsigned char RTI800_CSR_OVERRUN ;
 unsigned char inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int rti800_ai_eoc(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 unsigned char status;

 status = inb(dev->iobase + RTI800_CSR);
 if (status & RTI800_CSR_OVERRUN) {
  outb(0, dev->iobase + RTI800_CLRFLAGS);
  return -EOVERFLOW;
 }
 if (status & RTI800_CSR_DONE)
  return 0;
 return -EBUSY;
}
