
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int is_m_series; } ;
struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct ni_private* private; } ;


 int ENOTSUPP ;
 int NI_M_PFI_DI_REG ;
 int NI_M_PFI_DO_REG ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int ni_readw (struct comedi_device*,int ) ;
 int ni_writew (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_pfi_insn_bits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct ni_private *devpriv = dev->private;

 if (!devpriv->is_m_series)
  return -ENOTSUPP;

 if (comedi_dio_update_state(s, data))
  ni_writew(dev, s->state, NI_M_PFI_DO_REG);

 data[1] = ni_readw(dev, NI_M_PFI_DI_REG);

 return insn->n;
}
