
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int subdev_flags; int maxdata; int insn_config; int insn_bits; int * range_table; int n_chan; int type; } ;
struct comedi_device {int board_name; TYPE_1__* driver; int class_dev; struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int dummy; } ;
struct comedi_bond_private {int ndevs; int nchans; int name; } ;
struct TYPE_2__ {int driver_name; } ;


 int COMEDI_SUBD_DIO ;
 int ENOMEM ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int bonding_dio_insn_bits ;
 int bonding_dio_insn_config ;
 struct comedi_bond_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int dev_info (int ,char*,int ,int ,int ,int ) ;
 int do_dev_config (struct comedi_device*,struct comedi_devconfig*) ;
 int range_digital ;

__attribute__((used)) static int bonding_attach(struct comedi_device *dev,
     struct comedi_devconfig *it)
{
 struct comedi_bond_private *devpriv;
 struct comedi_subdevice *s;
 int ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;




 ret = do_dev_config(dev, it);
 if (ret)
  return ret;

 dev->board_name = devpriv->name;

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;

 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->n_chan = devpriv->nchans;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = bonding_dio_insn_bits;
 s->insn_config = bonding_dio_insn_config;

 dev_info(dev->class_dev,
   "%s: %s attached, %u channels from %u devices\n",
   dev->driver->driver_name, dev->board_name,
   devpriv->nchans, devpriv->ndevs);

 return 0;
}
