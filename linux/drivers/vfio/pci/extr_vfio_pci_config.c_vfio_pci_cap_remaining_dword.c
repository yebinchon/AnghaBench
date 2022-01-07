
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vfio_pci_device {scalar_t__* pci_config_map; } ;
typedef size_t loff_t ;



__attribute__((used)) static size_t vfio_pci_cap_remaining_dword(struct vfio_pci_device *vdev,
        loff_t pos)
{
 u8 cap = vdev->pci_config_map[pos];
 size_t i;

 for (i = 1; (pos + i) % 4 && vdev->pci_config_map[pos + i] == cap; i++)
           ;

 return i;
}
