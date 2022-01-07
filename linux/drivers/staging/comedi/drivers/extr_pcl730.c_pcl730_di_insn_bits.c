
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 unsigned int pcl730_get_bits (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int pcl730_di_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 data[1] = pcl730_get_bits(dev, s);

 return insn->n;
}
