
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAQP_AI_FIFO_REG ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int inb (scalar_t__) ;

__attribute__((used)) static unsigned int daqp_ai_get_sample(struct comedi_device *dev,
           struct comedi_subdevice *s)
{
 unsigned int val;





 val = inb(dev->iobase + DAQP_AI_FIFO_REG);
 val |= inb(dev->iobase + DAQP_AI_FIFO_REG) << 8;
 return comedi_offset_munge(s, val);
}
