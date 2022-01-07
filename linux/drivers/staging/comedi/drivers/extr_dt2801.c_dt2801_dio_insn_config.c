
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;


 int DT_C_SET_DIGIN ;
 int DT_C_SET_DIGOUT ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int) ;
 int dt2801_writecmd (struct comedi_device*,int ) ;
 int dt2801_writedata (struct comedi_device*,int) ;

__attribute__((used)) static int dt2801_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 int ret;

 ret = comedi_dio_insn_config(dev, s, insn, data, 0xff);
 if (ret)
  return ret;

 dt2801_writecmd(dev, s->io_bits ? DT_C_SET_DIGOUT : DT_C_SET_DIGIN);
 dt2801_writedata(dev, (s == &dev->subdevices[3]) ? 1 : 0);

 return insn->n;
}
