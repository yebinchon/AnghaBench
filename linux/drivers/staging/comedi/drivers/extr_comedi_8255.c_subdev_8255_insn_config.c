
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int subdev_8255_do_config (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int subdev_8255_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask;
 int ret;

 if (chan < 8)
  mask = 0x0000ff;
 else if (chan < 16)
  mask = 0x00ff00;
 else if (chan < 20)
  mask = 0x0f0000;
 else
  mask = 0xf00000;

 ret = comedi_dio_insn_config(dev, s, insn, data, mask);
 if (ret)
  return ret;

 subdev_8255_do_config(dev, s);

 return insn->n;
}
