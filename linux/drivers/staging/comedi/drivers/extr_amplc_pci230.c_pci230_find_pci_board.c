
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci230_board {int dummy; } ;


 unsigned int ARRAY_SIZE (struct pci230_board const*) ;
 struct pci230_board const* pci230_boards ;
 scalar_t__ pci230_match_pci_board (struct pci230_board const*,struct pci_dev*) ;

__attribute__((used)) static const struct pci230_board *pci230_find_pci_board(struct pci_dev *pci_dev)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(pci230_boards); i++)
  if (pci230_match_pci_board(&pci230_boards[i], pci_dev))
   return &pci230_boards[i];
 return ((void*)0);
}
