
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 unsigned int PCL816_STATUS_DRDY ;
 scalar_t__ PCL816_STATUS_REG ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int pcl816_ai_eoc(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + PCL816_STATUS_REG);
 if ((status & PCL816_STATUS_DRDY) == 0)
  return 0;
 return -EBUSY;
}
