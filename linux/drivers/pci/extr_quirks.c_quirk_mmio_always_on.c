
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int mmio_always_on; } ;



__attribute__((used)) static void quirk_mmio_always_on(struct pci_dev *dev)
{
 dev->mmio_always_on = 1;
}
