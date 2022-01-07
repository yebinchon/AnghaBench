
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_platform_device {int num_regions; TYPE_1__* regions; } ;
struct TYPE_2__ {int ioaddr; } ;


 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void vfio_platform_regions_cleanup(struct vfio_platform_device *vdev)
{
 int i;

 for (i = 0; i < vdev->num_regions; i++)
  iounmap(vdev->regions[i].ioaddr);

 vdev->num_regions = 0;
 kfree(vdev->regions);
}
