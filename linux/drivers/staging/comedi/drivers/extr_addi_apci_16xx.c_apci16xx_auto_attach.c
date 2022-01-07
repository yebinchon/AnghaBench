
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; scalar_t__ io_bits; int insn_bits; int insn_config; int * range_table; int type; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; int board_name; struct apci16xx_boardinfo const* board_ptr; } ;
struct apci16xx_boardinfo {int n_chan; int name; } ;


 scalar_t__ APCI16XX_DIR_REG (int) ;
 unsigned long ARRAY_SIZE (struct apci16xx_boardinfo*) ;
 int COMEDI_SUBD_DIO ;
 int ENODEV ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 struct apci16xx_boardinfo* apci16xx_boardtypes ;
 int apci16xx_dio_insn_bits ;
 int apci16xx_insn_config ;
 int comedi_alloc_subdevices (struct comedi_device*,unsigned int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int outl (scalar_t__,scalar_t__) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int range_digital ;

__attribute__((used)) static int apci16xx_auto_attach(struct comedi_device *dev,
    unsigned long context)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 const struct apci16xx_boardinfo *board = ((void*)0);
 struct comedi_subdevice *s;
 unsigned int n_subdevs;
 unsigned int last;
 int i;
 int ret;

 if (context < ARRAY_SIZE(apci16xx_boardtypes))
  board = &apci16xx_boardtypes[context];
 if (!board)
  return -ENODEV;
 dev->board_ptr = board;
 dev->board_name = board->name;

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;

 dev->iobase = pci_resource_start(pcidev, 0);






 n_subdevs = board->n_chan / 32;
 if ((n_subdevs * 32) < board->n_chan) {
  last = board->n_chan - (n_subdevs * 32);
  n_subdevs++;
 } else {
  last = 0;
 }

 ret = comedi_alloc_subdevices(dev, n_subdevs);
 if (ret)
  return ret;


 for (i = 0; i < n_subdevs; i++) {
  s = &dev->subdevices[i];
  s->type = COMEDI_SUBD_DIO;
  s->subdev_flags = SDF_WRITABLE | SDF_READABLE;
  s->n_chan = ((i * 32) < board->n_chan) ? 32 : last;
  s->maxdata = 1;
  s->range_table = &range_digital;
  s->insn_config = apci16xx_insn_config;
  s->insn_bits = apci16xx_dio_insn_bits;


  s->io_bits = 0;
  outl(s->io_bits, dev->iobase + APCI16XX_DIR_REG(i));
 }

 return 0;
}
