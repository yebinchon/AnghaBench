
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ ME4000_AI_DATA_REG ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 unsigned int inl (scalar_t__) ;

__attribute__((used)) static unsigned int me4000_ai_get_sample(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned int val;


 val = inl(dev->iobase + ME4000_AI_DATA_REG);
 return comedi_offset_munge(s, val);
}
