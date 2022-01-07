
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int COMEDI_INPUT ;
 int COMEDI_OUTPUT ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;






 unsigned int ni_660x_get_pfi_direction (struct comedi_device*,unsigned int) ;
 unsigned int ni_660x_get_pfi_routing (struct comedi_device*,unsigned int) ;
 int ni_660x_set_pfi_direction (struct comedi_device*,unsigned int,int ) ;
 int ni_660x_set_pfi_filter (struct comedi_device*,unsigned int,unsigned int) ;
 int ni_660x_set_pfi_routing (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_660x_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int ret;

 switch (data[0]) {
 case 132:
  ni_660x_set_pfi_direction(dev, chan, COMEDI_OUTPUT);
  break;

 case 133:
  ni_660x_set_pfi_direction(dev, chan, COMEDI_INPUT);
  break;

 case 131:
  data[1] = ni_660x_get_pfi_direction(dev, chan);
  break;

 case 128:
  ret = ni_660x_set_pfi_routing(dev, chan, data[1]);
  if (ret)
   return ret;
  break;

 case 129:
  data[1] = ni_660x_get_pfi_routing(dev, chan);
  break;

 case 130:
  ni_660x_set_pfi_filter(dev, chan, data[1]);
  break;

 default:
  return -EINVAL;
 }

 return insn->n;
}
