
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; int maxdata; int state; int insn_bits; int * range_table; int subdev_flags; int type; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int * options; } ;


 int COMEDI_SUBD_DO ;
 scalar_t__ PC263_DO_0_7_REG ;
 scalar_t__ PC263_DO_8_15_REG ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int inb (scalar_t__) ;
 int pc263_do_insn_bits ;
 int range_digital ;

__attribute__((used)) static int pc263_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x2);
 if (ret)
  return ret;

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 16;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = pc263_do_insn_bits;


 s->state = inb(dev->iobase + PC263_DO_0_7_REG) |
     (inb(dev->iobase + PC263_DO_8_15_REG) << 8);

 return 0;
}
