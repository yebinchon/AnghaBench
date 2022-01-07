
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;




 unsigned int CR_CHAN (int ) ;
 int EINVAL ;




 int ni_config_pfi_filter (struct comedi_device*,unsigned int,unsigned int) ;
 unsigned int ni_get_pfi_direction (struct comedi_device*,unsigned int) ;
 unsigned int ni_get_pfi_routing (struct comedi_device*,unsigned int) ;
 int ni_set_pfi_direction (struct comedi_device*,unsigned int,unsigned int) ;
 int ni_set_pfi_routing (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_pfi_insn_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan;

 if (insn->n < 1)
  return -EINVAL;

 chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 132:
 case 133:
  ni_set_pfi_direction(dev, chan, data[0]);
  break;
 case 131:
  data[1] = ni_get_pfi_direction(dev, chan);
  break;
 case 128:
  return ni_set_pfi_routing(dev, chan, data[1]);
 case 129:
  data[1] = ni_get_pfi_routing(dev, chan);
  break;
 case 130:
  return ni_config_pfi_filter(dev, chan, data[1]);
 default:
  return -EINVAL;
 }
 return 0;
}
