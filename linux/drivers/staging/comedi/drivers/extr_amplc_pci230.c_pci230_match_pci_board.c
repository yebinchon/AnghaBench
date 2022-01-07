
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; } ;
struct pci230_board {scalar_t__ id; scalar_t__ min_hwver; } ;


 int pci_resource_len (struct pci_dev*,int) ;

__attribute__((used)) static bool pci230_match_pci_board(const struct pci230_board *board,
       struct pci_dev *pci_dev)
{

 if (board->id != pci_dev->device)
  return 0;
 if (board->min_hwver == 0)
  return 1;

 if (pci_resource_len(pci_dev, 3) < 32)
  return 0;




 return 1;
}
