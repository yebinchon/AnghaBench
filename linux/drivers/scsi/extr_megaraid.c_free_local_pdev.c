
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int kfree (struct pci_dev*) ;

__attribute__((used)) static inline void
free_local_pdev(struct pci_dev *pdev)
{
 kfree(pdev);
}
