
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; } ;



__attribute__((used)) static inline bool is_a2(struct pci_dev *pdev)
{
 if (pdev->revision < 4)
  return 1;
 return 0;
}
