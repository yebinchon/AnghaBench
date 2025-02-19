
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; int subdev_flags; int maxdata; scalar_t__ state; int insn_config; int insn_bits; int * range_table; int type; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int * options; } ;


 int COMEDI_SUBD_DIO ;
 scalar_t__ DT2817_CR ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int dt2817_dio_insn_bits ;
 int dt2817_dio_insn_config ;
 int outb (int ,scalar_t__) ;
 int range_digital ;

__attribute__((used)) static int dt2817_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 int ret;
 struct comedi_subdevice *s;

 ret = comedi_request_region(dev, it->options[0], 0x5);
 if (ret)
  return ret;

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;

 s = &dev->subdevices[0];

 s->n_chan = 32;
 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->range_table = &range_digital;
 s->maxdata = 1;
 s->insn_bits = dt2817_dio_insn_bits;
 s->insn_config = dt2817_dio_insn_config;

 s->state = 0;
 outb(0, dev->iobase + DT2817_CR);

 return 0;
}
