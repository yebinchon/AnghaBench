
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int broken_intx_masking; } ;



__attribute__((used)) static void quirk_broken_intx_masking(struct pci_dev *dev)
{
 dev->broken_intx_masking = 1;
}
