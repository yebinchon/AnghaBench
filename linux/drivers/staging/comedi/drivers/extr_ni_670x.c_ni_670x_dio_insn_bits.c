
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ DIO_PORT0_DATA_OFFSET ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ni_670x_dio_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 if (comedi_dio_update_state(s, data))
  writel(s->state, dev->mmio + DIO_PORT0_DATA_OFFSET);

 data[1] = readl(dev->mmio + DIO_PORT0_DATA_OFFSET);

 return insn->n;
}
