
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {scalar_t__ opaque; } ;
struct amba_device {int* irq; } ;


 int AMBA_NR_IRQS ;
 int ENXIO ;

__attribute__((used)) static int get_amba_irq(struct vfio_platform_device *vdev, int i)
{
 struct amba_device *adev = (struct amba_device *) vdev->opaque;
 int ret = 0;

 if (i < AMBA_NR_IRQS)
  ret = adev->irq[i];


 return ret ? ret : -ENXIO;
}
