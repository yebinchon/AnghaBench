
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int saved_cap_space; } ;
struct pci_cap_saved_state {int next; } ;


 int hlist_add_head (int *,int *) ;

__attribute__((used)) static void pci_add_saved_cap(struct pci_dev *pci_dev,
 struct pci_cap_saved_state *new_cap)
{
 hlist_add_head(&new_cap->next, &pci_dev->saved_cap_space);
}
