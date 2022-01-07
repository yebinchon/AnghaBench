
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_irq_info {scalar_t__ index; int count; int flags; } ;


 int EINVAL ;
 scalar_t__ VFIO_CCW_IO_IRQ_INDEX ;
 int VFIO_IRQ_INFO_EVENTFD ;

__attribute__((used)) static int vfio_ccw_mdev_get_irq_info(struct vfio_irq_info *info)
{
 if (info->index != VFIO_CCW_IO_IRQ_INDEX)
  return -EINVAL;

 info->count = 1;
 info->flags = VFIO_IRQ_INFO_EVENTFD;

 return 0;
}
