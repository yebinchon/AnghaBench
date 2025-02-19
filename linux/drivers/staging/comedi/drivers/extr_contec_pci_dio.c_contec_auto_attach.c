
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_subdevice {int n_chan; int maxdata; int insn_bits; int * range_table; int subdev_flags; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int iobase; } ;


 int COMEDI_SUBD_DI ;
 int COMEDI_SUBD_DO ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int contec_di_insn_bits ;
 int contec_do_insn_bits ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int range_digital ;

__attribute__((used)) static int contec_auto_attach(struct comedi_device *dev,
         unsigned long context_unused)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;
 dev->iobase = pci_resource_start(pcidev, 0);

 ret = comedi_alloc_subdevices(dev, 2);
 if (ret)
  return ret;

 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_DI;
 s->subdev_flags = SDF_READABLE;
 s->n_chan = 16;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = contec_di_insn_bits;

 s = &dev->subdevices[1];
 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 16;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = contec_do_insn_bits;

 return 0;
}
