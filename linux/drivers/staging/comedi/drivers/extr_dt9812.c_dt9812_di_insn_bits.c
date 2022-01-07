
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int dt9812_digital_in (struct comedi_device*,unsigned int*) ;

__attribute__((used)) static int dt9812_di_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 u8 bits = 0;
 int ret;

 ret = dt9812_digital_in(dev, &bits);
 if (ret)
  return ret;

 data[1] = bits;

 return insn->n;
}
