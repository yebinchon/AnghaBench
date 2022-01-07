
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int DPR_SUBSYS_DIN ;
 int DPR_SUBSYS_DOUT ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int dt3k_readsingle (struct comedi_device*,int ,int ,int ) ;
 int dt3k_writesingle (struct comedi_device*,int ,int ,int ) ;

__attribute__((used)) static int dt3k_dio_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 if (comedi_dio_update_state(s, data))
  dt3k_writesingle(dev, DPR_SUBSYS_DOUT, 0, s->state);

 data[1] = dt3k_readsingle(dev, DPR_SUBSYS_DIN, 0, 0);

 return insn->n;
}
