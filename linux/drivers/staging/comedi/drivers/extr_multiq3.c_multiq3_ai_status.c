
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 scalar_t__ MULTIQ3_STATUS_REG ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int multiq3_ai_status(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned long context)
{
 unsigned int status;

 status = inw(dev->iobase + MULTIQ3_STATUS_REG);
 if (status & context)
  return 0;
 return -EBUSY;
}
