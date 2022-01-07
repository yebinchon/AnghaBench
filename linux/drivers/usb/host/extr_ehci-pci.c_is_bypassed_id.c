
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int bypass_pci_id_table ;
 int pci_match_id (int ,struct pci_dev*) ;

__attribute__((used)) static inline bool is_bypassed_id(struct pci_dev *pdev)
{
 return !!pci_match_id(bypass_pci_id_table, pdev);
}
