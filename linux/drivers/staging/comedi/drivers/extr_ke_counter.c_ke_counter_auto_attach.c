
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_subdevice {int n_chan; int maxdata; int insn_bits; int * range_table; int subdev_flags; int type; int insn_config; int insn_write; int insn_read; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;


 int COMEDI_SUBD_COUNTER ;
 int COMEDI_SUBD_DO ;
 int KE_OSC_SEL_20MHZ ;
 scalar_t__ KE_OSC_SEL_REG ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int ke_counter_do_insn_bits ;
 int ke_counter_insn_config ;
 int ke_counter_insn_read ;
 int ke_counter_insn_write ;
 int ke_counter_reset (struct comedi_device*) ;
 int outb (int ,scalar_t__) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int range_digital ;
 int range_unknown ;

__attribute__((used)) static int ke_counter_auto_attach(struct comedi_device *dev,
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
 s->type = COMEDI_SUBD_COUNTER;
 s->subdev_flags = SDF_READABLE;
 s->n_chan = 3;
 s->maxdata = 0x01ffffff;
 s->range_table = &range_unknown;
 s->insn_read = ke_counter_insn_read;
 s->insn_write = ke_counter_insn_write;
 s->insn_config = ke_counter_insn_config;

 s = &dev->subdevices[1];
 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 3;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = ke_counter_do_insn_bits;

 outb(KE_OSC_SEL_20MHZ, dev->iobase + KE_OSC_SEL_REG);

 ke_counter_reset(dev);

 return 0;
}
