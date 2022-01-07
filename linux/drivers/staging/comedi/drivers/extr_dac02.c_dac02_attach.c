
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; int maxdata; int insn_write; int * range_table; int subdev_flags; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int * options; } ;


 int COMEDI_SUBD_AO ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdev_readback (struct comedi_subdevice*) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int dac02_ao_insn_write ;
 int das02_ao_ranges ;

__attribute__((used)) static int dac02_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x08);
 if (ret)
  return ret;

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 2;
 s->maxdata = 0x0fff;
 s->range_table = &das02_ao_ranges;
 s->insn_write = dac02_ao_insn_write;

 return comedi_alloc_subdev_readback(s);
}
