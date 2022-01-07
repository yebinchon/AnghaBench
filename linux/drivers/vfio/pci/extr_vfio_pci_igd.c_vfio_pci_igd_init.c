
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int dummy; } ;


 int vfio_pci_igd_cfg_init (struct vfio_pci_device*) ;
 int vfio_pci_igd_opregion_init (struct vfio_pci_device*) ;

int vfio_pci_igd_init(struct vfio_pci_device *vdev)
{
 int ret;

 ret = vfio_pci_igd_opregion_init(vdev);
 if (ret)
  return ret;

 ret = vfio_pci_igd_cfg_init(vdev);
 if (ret)
  return ret;

 return 0;
}
