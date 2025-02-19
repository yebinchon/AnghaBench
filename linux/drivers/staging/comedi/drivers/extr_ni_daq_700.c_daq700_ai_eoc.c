
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 int ENODATA ;
 int EOVERFLOW ;
 scalar_t__ STA_R1 ;
 scalar_t__ STA_R2 ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int daq700_ai_eoc(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + STA_R2);
 if ((status & 0x03))
  return -EOVERFLOW;
 status = inb(dev->iobase + STA_R1);
 if ((status & 0x02))
  return -ENODATA;
 if ((status & 0x11) == 0x01)
  return 0;
 return -EBUSY;
}
