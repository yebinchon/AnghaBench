
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned int clock_source; unsigned int clock_ns; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {struct ni_private* private; } ;




 unsigned int CR_CHAN (int ) ;
 int EINVAL ;





 int ni_get_rtsi_direction (struct comedi_device*,unsigned int) ;
 int ni_get_rtsi_routing (struct comedi_device*,unsigned int) ;
 int ni_set_master_clock (struct comedi_device*,unsigned int,unsigned int) ;
 int ni_set_rtsi_direction (struct comedi_device*,unsigned int,unsigned int) ;
 int ni_set_rtsi_routing (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_rtsi_insn_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct ni_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 133:
 case 134:
  ni_set_rtsi_direction(dev, chan, data[0]);
  break;
 case 132: {
  int ret = ni_get_rtsi_direction(dev, chan);

  if (ret < 0)
   return ret;
  data[1] = ret;
  return 2;
 }
 case 129:
  return ni_set_master_clock(dev, data[1], data[2]);
 case 131:
  data[1] = devpriv->clock_source;
  data[2] = devpriv->clock_ns;
  return 3;
 case 128:
  return ni_set_rtsi_routing(dev, chan, data[1]);
 case 130: {
  int ret = ni_get_rtsi_routing(dev, chan);

  if (ret < 0)
   return ret;
  data[1] = ret;
  return 2;
 }
 default:
  return -EINVAL;
 }
 return 1;
}
