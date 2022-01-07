
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int NI_M_DIO_REG ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int ni_readl (struct comedi_device*,int ) ;
 int ni_writel (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_m_series_dio_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 if (comedi_dio_update_state(s, data))
  ni_writel(dev, s->state, NI_M_DIO_REG);

 data[1] = ni_readl(dev, NI_M_DIO_REG);

 return insn->n;
}
