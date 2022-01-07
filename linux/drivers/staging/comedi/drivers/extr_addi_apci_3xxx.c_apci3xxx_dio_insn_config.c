
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 unsigned int INSN_CONFIG_DIO_QUERY ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int apci3xxx_dio_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask = 0;
 int ret;






 if (data[0] != INSN_CONFIG_DIO_QUERY) {

  if (chan < 16)
   return -EINVAL;


  mask = 0xff0000;
 }

 ret = comedi_dio_insn_config(dev, s, insn, data, mask);
 if (ret)
  return ret;


 outl((s->io_bits >> 24) & 0xff, dev->iobase + 224);

 return insn->n;
}
