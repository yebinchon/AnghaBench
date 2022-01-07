
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci9118_boardinfo {int name; } ;
struct comedi_device {int board_name; struct pci9118_boardinfo const* board_ptr; } ;


 unsigned long ARRAY_SIZE (struct pci9118_boardinfo*) ;
 int ENODEV ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 struct pci9118_boardinfo* pci9118_boards ;
 int pci9118_common_attach (struct comedi_device*,int ,int ) ;
 int pci_dev_get (struct pci_dev*) ;

__attribute__((used)) static int pci9118_auto_attach(struct comedi_device *dev,
          unsigned long context)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 const struct pci9118_boardinfo *board = ((void*)0);

 if (context < ARRAY_SIZE(pci9118_boards))
  board = &pci9118_boards[context];
 if (!board)
  return -ENODEV;
 dev->board_ptr = board;
 dev->board_name = board->name;





 pci_dev_get(pcidev);

 return pci9118_common_attach(dev, 0, 0);
}
