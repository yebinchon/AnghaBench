
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ class; } ;


 scalar_t__ CL_OHCI ;
 scalar_t__ CL_UHCI ;

__attribute__((used)) static inline int is_ohci_or_uhci(struct pci_dev *pdev)
{
 return pdev->class == CL_OHCI || pdev->class == CL_UHCI;
}
