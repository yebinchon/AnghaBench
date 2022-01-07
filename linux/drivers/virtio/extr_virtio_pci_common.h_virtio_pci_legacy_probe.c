
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pci_device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int virtio_pci_legacy_probe(struct virtio_pci_device *vp_dev)
{
 return -ENODEV;
}
