
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_ioeventfd {int count; int addr; int data; } ;


 int vfio_iowrite16 (int ,int ) ;
 int vfio_iowrite32 (int ,int ) ;
 int vfio_iowrite64 (int ,int ) ;
 int vfio_iowrite8 (int ,int ) ;

__attribute__((used)) static int vfio_pci_ioeventfd_handler(void *opaque, void *unused)
{
 struct vfio_pci_ioeventfd *ioeventfd = opaque;

 switch (ioeventfd->count) {
 case 1:
  vfio_iowrite8(ioeventfd->data, ioeventfd->addr);
  break;
 case 2:
  vfio_iowrite16(ioeventfd->data, ioeventfd->addr);
  break;
 case 4:
  vfio_iowrite32(ioeventfd->data, ioeventfd->addr);
  break;





 }

 return 0;
}
