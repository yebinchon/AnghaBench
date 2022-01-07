
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_read; int insn_write; int * range_table; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int iobase; } ;


 int COMEDI_SUBD_AO ;
 int PCIMDDA_8255_BASE_REG ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int cb_pcimdda_ao_insn_read ;
 int cb_pcimdda_ao_insn_write ;
 int comedi_alloc_subdev_readback (struct comedi_subdevice*) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int range_bipolar5 ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int *,int ) ;

__attribute__((used)) static int cb_pcimdda_auto_attach(struct comedi_device *dev,
      unsigned long context_unused)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;
 dev->iobase = pci_resource_start(pcidev, 3);

 ret = comedi_alloc_subdevices(dev, 2);
 if (ret)
  return ret;

 s = &dev->subdevices[0];

 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE | SDF_READABLE;
 s->n_chan = 6;
 s->maxdata = 0xffff;
 s->range_table = &range_bipolar5;
 s->insn_write = cb_pcimdda_ao_insn_write;
 s->insn_read = cb_pcimdda_ao_insn_read;

 ret = comedi_alloc_subdev_readback(s);
 if (ret)
  return ret;

 s = &dev->subdevices[1];

 return subdev_8255_init(dev, s, ((void*)0), PCIMDDA_8255_BASE_REG);
}
