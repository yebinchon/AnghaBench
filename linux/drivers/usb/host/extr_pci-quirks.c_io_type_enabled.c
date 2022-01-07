
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int pci_read_config_word (struct pci_dev*,int ,unsigned int*) ;

__attribute__((used)) static inline int io_type_enabled(struct pci_dev *pdev, unsigned int mask)
{
 u16 cmd;
 return !pci_read_config_word(pdev, PCI_COMMAND, &cmd) && (cmd & mask);
}
