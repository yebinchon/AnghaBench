
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_platform_region {int dummy; } ;
struct vfio_platform_device {int num_regions; TYPE_1__* regions; struct resource* (* get_resource ) (struct vfio_platform_device*,int) ;} ;
struct resource {int start; int flags; } ;
struct TYPE_3__ {int addr; int size; int type; scalar_t__ flags; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int IORESOURCE_READONLY ;
 int PAGE_MASK ;
 int VFIO_PLATFORM_REGION_TYPE_MMIO ;
 int VFIO_PLATFORM_REGION_TYPE_PIO ;
 scalar_t__ VFIO_REGION_INFO_FLAG_MMAP ;
 scalar_t__ VFIO_REGION_INFO_FLAG_READ ;
 scalar_t__ VFIO_REGION_INFO_FLAG_WRITE ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int kfree (TYPE_1__*) ;
 int resource_size (struct resource*) ;
 int resource_type (struct resource*) ;
 struct resource* stub1 (struct vfio_platform_device*,int) ;
 struct resource* stub2 (struct vfio_platform_device*,int) ;

__attribute__((used)) static int vfio_platform_regions_init(struct vfio_platform_device *vdev)
{
 int cnt = 0, i;

 while (vdev->get_resource(vdev, cnt))
  cnt++;

 vdev->regions = kcalloc(cnt, sizeof(struct vfio_platform_region),
    GFP_KERNEL);
 if (!vdev->regions)
  return -ENOMEM;

 for (i = 0; i < cnt; i++) {
  struct resource *res =
   vdev->get_resource(vdev, i);

  if (!res)
   goto err;

  vdev->regions[i].addr = res->start;
  vdev->regions[i].size = resource_size(res);
  vdev->regions[i].flags = 0;

  switch (resource_type(res)) {
  case 128:
   vdev->regions[i].type = VFIO_PLATFORM_REGION_TYPE_MMIO;
   vdev->regions[i].flags |= VFIO_REGION_INFO_FLAG_READ;
   if (!(res->flags & IORESOURCE_READONLY))
    vdev->regions[i].flags |=
     VFIO_REGION_INFO_FLAG_WRITE;





   if (!(vdev->regions[i].addr & ~PAGE_MASK) &&
     !(vdev->regions[i].size & ~PAGE_MASK))
    vdev->regions[i].flags |=
     VFIO_REGION_INFO_FLAG_MMAP;

   break;
  case 129:
   vdev->regions[i].type = VFIO_PLATFORM_REGION_TYPE_PIO;
   break;
  default:
   goto err;
  }
 }

 vdev->num_regions = cnt;

 return 0;
err:
 kfree(vdev->regions);
 return -EINVAL;
}
