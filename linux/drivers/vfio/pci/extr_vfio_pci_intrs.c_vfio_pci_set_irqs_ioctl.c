
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfio_pci_device {int pdev; } ;


 int ENOTTY ;


 int VFIO_IRQ_SET_ACTION_TYPE_MASK ;






 int pci_is_pcie (int ) ;
 int vfio_pci_set_err_trigger (struct vfio_pci_device*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int vfio_pci_set_intx_mask (struct vfio_pci_device*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int vfio_pci_set_intx_trigger (struct vfio_pci_device*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int vfio_pci_set_intx_unmask (struct vfio_pci_device*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int vfio_pci_set_msi_trigger (struct vfio_pci_device*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int vfio_pci_set_req_trigger (struct vfio_pci_device*,unsigned int,unsigned int,unsigned int,int,void*) ;

int vfio_pci_set_irqs_ioctl(struct vfio_pci_device *vdev, uint32_t flags,
       unsigned index, unsigned start, unsigned count,
       void *data)
{
 int (*func)(struct vfio_pci_device *vdev, unsigned index,
      unsigned start, unsigned count, uint32_t flags,
      void *data) = ((void*)0);

 switch (index) {
 case 131:
  switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
  case 135:
   func = vfio_pci_set_intx_mask;
   break;
  case 133:
   func = vfio_pci_set_intx_unmask;
   break;
  case 134:
   func = vfio_pci_set_intx_trigger;
   break;
  }
  break;
 case 129:
 case 130:
  switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
  case 135:
  case 133:

   break;
  case 134:
   func = vfio_pci_set_msi_trigger;
   break;
  }
  break;
 case 132:
  switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
  case 134:
   if (pci_is_pcie(vdev->pdev))
    func = vfio_pci_set_err_trigger;
   break;
  }
  break;
 case 128:
  switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
  case 134:
   func = vfio_pci_set_req_trigger;
   break;
  }
  break;
 }

 if (!func)
  return -ENOTTY;

 return func(vdev, index, start, count, flags, data);
}
