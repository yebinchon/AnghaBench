
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_subdevice {int maxdata; void* type; int insn_bits; int * range_table; scalar_t__ n_chan; int subdev_flags; } ;
struct comedi_device {struct comedi_subdevice* subdevices; void* iobase; int board_name; struct apci1516_boardinfo const* board_ptr; } ;
struct apci1516_private {void* wdog_iobase; } ;
struct apci1516_boardinfo {scalar_t__ has_wdog; scalar_t__ do_nchan; scalar_t__ di_nchan; int name; } ;


 unsigned long ARRAY_SIZE (struct apci1516_boardinfo*) ;
 void* COMEDI_SUBD_DI ;
 void* COMEDI_SUBD_DO ;
 void* COMEDI_SUBD_UNUSED ;
 int ENODEV ;
 int ENOMEM ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int addi_watchdog_init (struct comedi_subdevice*,void*) ;
 struct apci1516_boardinfo* apci1516_boardtypes ;
 int apci1516_di_insn_bits ;
 int apci1516_do_insn_bits ;
 int apci1516_reset (struct comedi_device*) ;
 struct apci1516_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int range_digital ;

__attribute__((used)) static int apci1516_auto_attach(struct comedi_device *dev,
    unsigned long context)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 const struct apci1516_boardinfo *board = ((void*)0);
 struct apci1516_private *devpriv;
 struct comedi_subdevice *s;
 int ret;

 if (context < ARRAY_SIZE(apci1516_boardtypes))
  board = &apci1516_boardtypes[context];
 if (!board)
  return -ENODEV;
 dev->board_ptr = board;
 dev->board_name = board->name;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;

 dev->iobase = pci_resource_start(pcidev, 1);
 devpriv->wdog_iobase = pci_resource_start(pcidev, 2);

 ret = comedi_alloc_subdevices(dev, 3);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 if (board->di_nchan) {
  s->type = COMEDI_SUBD_DI;
  s->subdev_flags = SDF_READABLE;
  s->n_chan = board->di_nchan;
  s->maxdata = 1;
  s->range_table = &range_digital;
  s->insn_bits = apci1516_di_insn_bits;
 } else {
  s->type = COMEDI_SUBD_UNUSED;
 }


 s = &dev->subdevices[1];
 if (board->do_nchan) {
  s->type = COMEDI_SUBD_DO;
  s->subdev_flags = SDF_WRITABLE;
  s->n_chan = board->do_nchan;
  s->maxdata = 1;
  s->range_table = &range_digital;
  s->insn_bits = apci1516_do_insn_bits;
 } else {
  s->type = COMEDI_SUBD_UNUSED;
 }


 s = &dev->subdevices[2];
 if (board->has_wdog) {
  ret = addi_watchdog_init(s, devpriv->wdog_iobase);
  if (ret)
   return ret;
 } else {
  s->type = COMEDI_SUBD_UNUSED;
 }

 apci1516_reset(dev);
 return 0;
}
