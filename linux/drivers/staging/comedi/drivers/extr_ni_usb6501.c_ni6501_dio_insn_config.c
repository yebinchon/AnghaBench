
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int SET_PORT_DIR ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int ) ;
 int ni6501_port_command (struct comedi_device*,int ,int ,int *) ;

__attribute__((used)) static int ni6501_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 int ret;

 ret = comedi_dio_insn_config(dev, s, insn, data, 0);
 if (ret)
  return ret;

 ret = ni6501_port_command(dev, SET_PORT_DIR, s->io_bits, ((void*)0));
 if (ret)
  return ret;

 return insn->n;
}
