
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_subdevice {int n_chan; int maxdata; int insn_bits; int * range_table; int subdev_flags; int type; int insn_write; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;


 int COMEDI_SUBD_AO ;
 int COMEDI_SUBD_DI ;
 scalar_t__ PCI1720_SYNC_CTRL_REG ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdev_readback (struct comedi_subdevice*) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int outb (int ,scalar_t__) ;
 int pci1720_ao_insn_write ;
 int pci1720_ao_range ;
 int pci1720_di_insn_bits ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int range_digital ;

__attribute__((used)) static int pci1720_auto_attach(struct comedi_device *dev,
          unsigned long context)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;
 dev->iobase = pci_resource_start(pcidev, 2);

 ret = comedi_alloc_subdevices(dev, 2);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 4;
 s->maxdata = 0x0fff;
 s->range_table = &pci1720_ao_range;
 s->insn_write = pci1720_ao_insn_write;

 ret = comedi_alloc_subdev_readback(s);
 if (ret)
  return ret;


 s = &dev->subdevices[1];
 s->type = COMEDI_SUBD_DI;
 s->subdev_flags = SDF_READABLE;
 s->n_chan = 4;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = pci1720_di_insn_bits;


 outb(0, dev->iobase + PCI1720_SYNC_CTRL_REG);

 return 0;
}
