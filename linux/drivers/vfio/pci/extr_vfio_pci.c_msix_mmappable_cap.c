
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int dummy; } ;
struct vfio_info_cap_header {int version; int id; } ;
struct vfio_info_cap {int dummy; } ;
typedef int header ;


 int VFIO_REGION_INFO_CAP_MSIX_MAPPABLE ;
 int vfio_info_add_capability (struct vfio_info_cap*,struct vfio_info_cap_header*,int) ;

__attribute__((used)) static int msix_mmappable_cap(struct vfio_pci_device *vdev,
         struct vfio_info_cap *caps)
{
 struct vfio_info_cap_header header = {
  .id = VFIO_REGION_INFO_CAP_MSIX_MAPPABLE,
  .version = 1
 };

 return vfio_info_add_capability(caps, &header, sizeof(header));
}
