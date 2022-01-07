
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EBUSY ;
 unsigned int PCL711_AI_MSB_DRDY ;
 scalar_t__ PCL711_AI_MSB_REG ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int pcl711_ai_eoc(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 unsigned int status;

 status = inb(dev->iobase + PCL711_AI_MSB_REG);
 if ((status & PCL711_AI_MSB_DRDY) == 0)
  return 0;
 return -EBUSY;
}
