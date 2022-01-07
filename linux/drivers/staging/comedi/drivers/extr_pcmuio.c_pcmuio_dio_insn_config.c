
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 unsigned int INSN_CONFIG_DIO_INPUT ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int ) ;
 int pcmuio_subdevice_to_asic (struct comedi_subdevice*) ;
 int pcmuio_subdevice_to_port (struct comedi_subdevice*) ;
 int pcmuio_write (struct comedi_device*,int ,int,int ,int) ;

__attribute__((used)) static int pcmuio_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 int asic = pcmuio_subdevice_to_asic(s);
 int port = pcmuio_subdevice_to_port(s);
 int ret;

 ret = comedi_dio_insn_config(dev, s, insn, data, 0);
 if (ret)
  return ret;

 if (data[0] == INSN_CONFIG_DIO_INPUT)
  pcmuio_write(dev, s->io_bits, asic, 0, port);

 return insn->n;
}
