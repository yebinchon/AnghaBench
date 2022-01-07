
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int pcidev; } ;


 int PCI_IOBAR_OFFSET ;
 int pci_release_region (int ,int ) ;

__attribute__((used)) static void asd_unmap_ioport(struct asd_ha_struct *asd_ha)
{
 pci_release_region(asd_ha->pcidev, PCI_IOBAR_OFFSET);
}
