
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt2815_private {struct comedi_lrange const** range_type_list; } ;
struct comedi_subdevice {int maxdata; int n_chan; struct comedi_lrange const** range_table_list; int insn_read; int insn_write; int subdev_flags; int type; } ;
struct comedi_lrange {int dummy; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int* options; } ;


 int COMEDI_SUBD_AO ;
 scalar_t__ DT2815_DATA ;
 scalar_t__ DT2815_STATUS ;
 int ENOMEM ;
 int SDF_WRITABLE ;
 struct dt2815_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int,int) ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int dt2815_ao_insn ;
 int dt2815_ao_insn_read ;
 unsigned int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 struct comedi_lrange range_0_32mA ;
 struct comedi_lrange range_4_20mA ;
 struct comedi_lrange range_bipolar5 ;
 struct comedi_lrange range_unipolar5 ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dt2815_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct dt2815_private *devpriv;
 struct comedi_subdevice *s;
 int i;
 const struct comedi_lrange *current_range_type, *voltage_range_type;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x2);
 if (ret)
  return ret;

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 s = &dev->subdevices[0];

 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE;
 s->maxdata = 0xfff;
 s->n_chan = 8;
 s->insn_write = dt2815_ao_insn;
 s->insn_read = dt2815_ao_insn_read;
 s->range_table_list = devpriv->range_type_list;

 current_range_type = (it->options[3])
     ? &range_4_20mA : &range_0_32mA;
 voltage_range_type = (it->options[2])
     ? &range_bipolar5 : &range_unipolar5;
 for (i = 0; i < 8; i++) {
  devpriv->range_type_list[i] = (it->options[5 + i])
      ? current_range_type : voltage_range_type;
 }


 outb(0x00, dev->iobase + DT2815_STATUS);
 for (i = 0; i < 100; i++) {

  unsigned int status;

  usleep_range(1000, 3000);
  status = inb(dev->iobase + DT2815_STATUS);
  if (status == 4) {
   unsigned int program;

   program = (it->options[4] & 0x3) << 3 | 0x7;
   outb(program, dev->iobase + DT2815_DATA);
   dev_dbg(dev->class_dev, "program: 0x%x (@t=%d)\n",
    program, i);
   break;
  } else if (status != 0x00) {
   dev_dbg(dev->class_dev,
    "unexpected status 0x%x (@t=%d)\n",
    status, i);
   if (status & 0x60)
    outb(0x00, dev->iobase + DT2815_STATUS);
  }
 }

 return 0;
}
