
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 unsigned int I8254_OSC_BASE_1MHZ ;


__attribute__((used)) static int aio_aio12_8_counter_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 128:




  data[0] = 0;
  data[1] = (chan == 1) ? I8254_OSC_BASE_1MHZ : 0;
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
