
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rti802_private {int ** range_type_list; int * dac_coding; } ;
struct comedi_subdevice {int maxdata; int n_chan; int ** range_table_list; int insn_write; int subdev_flags; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {scalar_t__* options; } ;


 int COMEDI_SUBD_AO ;
 int ENOMEM ;
 int SDF_WRITABLE ;
 struct rti802_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdev_readback (struct comedi_subdevice*) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,scalar_t__,int) ;
 int dac_2comp ;
 int dac_straight ;
 int range_bipolar10 ;
 int range_unipolar10 ;
 int rti802_ao_insn_write ;

__attribute__((used)) static int rti802_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct rti802_private *devpriv;
 struct comedi_subdevice *s;
 int i;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x04);
 if (ret)
  return ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE;
 s->maxdata = 0xfff;
 s->n_chan = 8;
 s->insn_write = rti802_ao_insn_write;

 ret = comedi_alloc_subdev_readback(s);
 if (ret)
  return ret;

 s->range_table_list = devpriv->range_type_list;
 for (i = 0; i < 8; i++) {
  devpriv->dac_coding[i] = (it->options[3 + 2 * i])
   ? (dac_straight) : (dac_2comp);
  devpriv->range_type_list[i] = (it->options[2 + 2 * i])
   ? &range_unipolar10 : &range_bipolar10;
 }

 return 0;
}
