
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL711_DI_LSB_REG ;
 scalar_t__ PCL711_DI_MSB_REG ;
 int inb (scalar_t__) ;

__attribute__((used)) static int pcl711_di_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int val;

 val = inb(dev->iobase + PCL711_DI_LSB_REG);
 val |= (inb(dev->iobase + PCL711_DI_MSB_REG) << 8);

 data[1] = val;

 return insn->n;
}
