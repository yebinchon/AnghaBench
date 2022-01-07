
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int * msi_perm; int * pci_config_map; int * vconfig; } ;


 int kfree (int *) ;

void vfio_config_free(struct vfio_pci_device *vdev)
{
 kfree(vdev->vconfig);
 vdev->vconfig = ((void*)0);
 kfree(vdev->pci_config_map);
 vdev->pci_config_map = ((void*)0);
 kfree(vdev->msi_perm);
 vdev->msi_perm = ((void*)0);
}
