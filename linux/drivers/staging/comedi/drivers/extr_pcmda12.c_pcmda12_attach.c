
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmda12_private {int simultaneous_xfer_mode; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_read; int insn_write; int * range_table; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int * options; } ;


 int COMEDI_SUBD_AO ;
 int ENOMEM ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 struct pcmda12_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdev_readback (struct comedi_subdevice*) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int pcmda12_ao_insn_read ;
 int pcmda12_ao_insn_write ;
 int pcmda12_ao_reset (struct comedi_device*,struct comedi_subdevice*) ;
 int pcmda12_ranges ;

__attribute__((used)) static int pcmda12_attach(struct comedi_device *dev,
     struct comedi_devconfig *it)
{
 struct pcmda12_private *devpriv;
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x10);
 if (ret)
  return ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 devpriv->simultaneous_xfer_mode = it->options[1];

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;

 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->n_chan = 8;
 s->maxdata = 0x0fff;
 s->range_table = &pcmda12_ranges;
 s->insn_write = pcmda12_ao_insn_write;
 s->insn_read = pcmda12_ao_insn_read;

 ret = comedi_alloc_subdev_readback(s);
 if (ret)
  return ret;

 pcmda12_ao_reset(dev, s);

 return 0;
}
