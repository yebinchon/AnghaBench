
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfio_platform_device {int dummy; } ;


 int ENOTTY ;


 int VFIO_IRQ_SET_ACTION_TYPE_MASK ;

 int vfio_platform_set_irq_mask (struct vfio_platform_device*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int vfio_platform_set_irq_trigger (struct vfio_platform_device*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int vfio_platform_set_irq_unmask (struct vfio_platform_device*,unsigned int,unsigned int,unsigned int,int,void*) ;

int vfio_platform_set_irqs_ioctl(struct vfio_platform_device *vdev,
     uint32_t flags, unsigned index, unsigned start,
     unsigned count, void *data)
{
 int (*func)(struct vfio_platform_device *vdev, unsigned index,
      unsigned start, unsigned count, uint32_t flags,
      void *data) = ((void*)0);

 switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
 case 130:
  func = vfio_platform_set_irq_mask;
  break;
 case 128:
  func = vfio_platform_set_irq_unmask;
  break;
 case 129:
  func = vfio_platform_set_irq_trigger;
  break;
 }

 if (!func)
  return -ENOTTY;

 return func(vdev, index, start, count, flags, data);
}
