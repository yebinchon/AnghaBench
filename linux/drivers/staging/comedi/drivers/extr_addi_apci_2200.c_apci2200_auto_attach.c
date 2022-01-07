
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_subdevice {int n_chan; int maxdata; int insn_bits; int * range_table; int subdev_flags; int type; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;


 scalar_t__ APCI2200_WDOG_REG ;
 int COMEDI_SUBD_DI ;
 int COMEDI_SUBD_DO ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int addi_watchdog_init (struct comedi_subdevice*,scalar_t__) ;
 int apci2200_di_insn_bits ;
 int apci2200_do_insn_bits ;
 int apci2200_reset (struct comedi_device*) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int range_digital ;

__attribute__((used)) static int apci2200_auto_attach(struct comedi_device *dev,
    unsigned long context_unused)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;

 dev->iobase = pci_resource_start(pcidev, 1);

 ret = comedi_alloc_subdevices(dev, 3);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_DI;
 s->subdev_flags = SDF_READABLE;
 s->n_chan = 8;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = apci2200_di_insn_bits;


 s = &dev->subdevices[1];
 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 16;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = apci2200_do_insn_bits;


 s = &dev->subdevices[2];
 ret = addi_watchdog_init(s, dev->iobase + APCI2200_WDOG_REG);
 if (ret)
  return ret;

 apci2200_reset(dev);
 return 0;
}
