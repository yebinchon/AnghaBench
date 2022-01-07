
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_write; int * range_table; int type; int insn_read; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int * options; } ;


 int COMEDI_SUBD_AI ;
 int COMEDI_SUBD_AO ;
 int SDF_GROUND ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdev_readback (struct comedi_subdevice*) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int fl512_ai_insn_read ;
 int fl512_ao_insn_write ;
 int range_fl512 ;

__attribute__((used)) static int fl512_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x10);
 if (ret)
  return ret;

 ret = comedi_alloc_subdevices(dev, 2);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE | SDF_GROUND;
 s->n_chan = 16;
 s->maxdata = 0x0fff;
 s->range_table = &range_fl512;
 s->insn_read = fl512_ai_insn_read;


 s = &dev->subdevices[1];
 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 2;
 s->maxdata = 0x0fff;
 s->range_table = &range_fl512;
 s->insn_write = fl512_ao_insn_write;

 return comedi_alloc_subdev_readback(s);
}
