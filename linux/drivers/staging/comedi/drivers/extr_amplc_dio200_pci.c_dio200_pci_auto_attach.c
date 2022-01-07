
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct dio200_board {unsigned int mainbar; scalar_t__ is_pcie; int name; } ;
struct comedi_device {int iobase; int class_dev; int mmio; int board_name; TYPE_1__* driver; struct dio200_board const* board_ptr; } ;
struct TYPE_2__ {int driver_name; } ;


 unsigned long ARRAY_SIZE (struct dio200_board*) ;
 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int amplc_dio200_common_attach (struct comedi_device*,int ,int ) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ,int ) ;
 struct dio200_board* dio200_pci_boards ;
 int dio200_pcie_board_setup (struct comedi_device*) ;
 int pci_ioremap_bar (struct pci_dev*,unsigned int) ;
 int pci_name (struct pci_dev*) ;
 int pci_resource_flags (struct pci_dev*,unsigned int) ;
 int pci_resource_start (struct pci_dev*,unsigned int) ;

__attribute__((used)) static int dio200_pci_auto_attach(struct comedi_device *dev,
      unsigned long context_model)
{
 struct pci_dev *pci_dev = comedi_to_pci_dev(dev);
 const struct dio200_board *board = ((void*)0);
 unsigned int bar;
 int ret;

 if (context_model < ARRAY_SIZE(dio200_pci_boards))
  board = &dio200_pci_boards[context_model];
 if (!board)
  return -EINVAL;
 dev->board_ptr = board;
 dev->board_name = board->name;

 dev_info(dev->class_dev, "%s: attach pci %s (%s)\n",
   dev->driver->driver_name, pci_name(pci_dev), dev->board_name);

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;

 bar = board->mainbar;
 if (pci_resource_flags(pci_dev, bar) & IORESOURCE_MEM) {
  dev->mmio = pci_ioremap_bar(pci_dev, bar);
  if (!dev->mmio) {
   dev_err(dev->class_dev,
    "error! cannot remap registers\n");
   return -ENOMEM;
  }
 } else {
  dev->iobase = pci_resource_start(pci_dev, bar);
 }

 if (board->is_pcie) {
  ret = dio200_pcie_board_setup(dev);
  if (ret < 0)
   return ret;
 }

 return amplc_dio200_common_attach(dev, pci_dev->irq, IRQF_SHARED);
}
