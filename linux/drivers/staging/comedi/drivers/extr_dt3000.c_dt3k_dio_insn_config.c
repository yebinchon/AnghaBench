
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int dt3k_dio_config (struct comedi_device*,int) ;

__attribute__((used)) static int dt3k_dio_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask;
 int ret;

 if (chan < 4)
  mask = 0x0f;
 else
  mask = 0xf0;

 ret = comedi_dio_insn_config(dev, s, insn, data, mask);
 if (ret)
  return ret;

 dt3k_dio_config(dev, (s->io_bits & 0x01) | ((s->io_bits & 0x10) >> 3));

 return insn->n;
}
