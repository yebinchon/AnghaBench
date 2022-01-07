
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int pcidev; struct asd_ha_addrspace* io_handle; } ;
struct asd_ha_addrspace {int addr; } ;


 int iounmap (int ) ;
 int pci_release_region (int ,int) ;

__attribute__((used)) static void asd_unmap_memio(struct asd_ha_struct *asd_ha)
{
 struct asd_ha_addrspace *io_handle;

 io_handle = &asd_ha->io_handle[1];
 iounmap(io_handle->addr);
 pci_release_region(asd_ha->pcidev, 2);

 io_handle = &asd_ha->io_handle[0];
 iounmap(io_handle->addr);
 pci_release_region(asd_ha->pcidev, 0);
}
