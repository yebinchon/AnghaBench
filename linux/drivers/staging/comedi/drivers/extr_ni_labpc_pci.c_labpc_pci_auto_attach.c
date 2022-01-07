
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct labpc_boardinfo {int name; } ;
struct comedi_device {int mmio; int board_name; struct labpc_boardinfo const* board_ptr; } ;


 unsigned long ARRAY_SIZE (struct labpc_boardinfo*) ;
 int ENODEV ;
 int ENOMEM ;
 int IRQF_SHARED ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int labpc_common_attach (struct comedi_device*,int ,int ) ;
 struct labpc_boardinfo* labpc_pci_boards ;
 int labpc_pci_mite_init (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int) ;

__attribute__((used)) static int labpc_pci_auto_attach(struct comedi_device *dev,
     unsigned long context)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 const struct labpc_boardinfo *board = ((void*)0);
 int ret;

 if (context < ARRAY_SIZE(labpc_pci_boards))
  board = &labpc_pci_boards[context];
 if (!board)
  return -ENODEV;
 dev->board_ptr = board;
 dev->board_name = board->name;

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;

 ret = labpc_pci_mite_init(pcidev);
 if (ret)
  return ret;

 dev->mmio = pci_ioremap_bar(pcidev, 1);
 if (!dev->mmio)
  return -ENOMEM;

 return labpc_common_attach(dev, pcidev->irq, IRQF_SHARED);
}
