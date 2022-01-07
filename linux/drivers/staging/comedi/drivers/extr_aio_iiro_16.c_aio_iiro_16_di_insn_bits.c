
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 unsigned int aio_iiro_16_read_inputs (struct comedi_device*) ;

__attribute__((used)) static int aio_iiro_16_di_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 data[1] = aio_iiro_16_read_inputs(dev);

 return insn->n;
}
