
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct virtio_pci_device {scalar_t__ ioaddr; } ;


 scalar_t__ VIRTIO_MSI_CONFIG_VECTOR ;
 int ioread16 (scalar_t__) ;
 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static u16 vp_config_vector(struct virtio_pci_device *vp_dev, u16 vector)
{

 iowrite16(vector, vp_dev->ioaddr + VIRTIO_MSI_CONFIG_VECTOR);


 return ioread16(vp_dev->ioaddr + VIRTIO_MSI_CONFIG_VECTOR);
}
