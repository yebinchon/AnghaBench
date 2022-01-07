
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfio_ccw_regops {int dummy; } ;
struct vfio_ccw_region {unsigned int subtype; size_t size; void* data; int flags; struct vfio_ccw_regops const* ops; int type; } ;
struct vfio_ccw_private {int num_regions; struct vfio_ccw_region* region; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VFIO_REGION_TYPE_CCW ;
 struct vfio_ccw_region* krealloc (struct vfio_ccw_region*,int,int ) ;

int vfio_ccw_register_dev_region(struct vfio_ccw_private *private,
     unsigned int subtype,
     const struct vfio_ccw_regops *ops,
     size_t size, u32 flags, void *data)
{
 struct vfio_ccw_region *region;

 region = krealloc(private->region,
     (private->num_regions + 1) * sizeof(*region),
     GFP_KERNEL);
 if (!region)
  return -ENOMEM;

 private->region = region;
 private->region[private->num_regions].type = VFIO_REGION_TYPE_CCW;
 private->region[private->num_regions].subtype = subtype;
 private->region[private->num_regions].ops = ops;
 private->region[private->num_regions].size = size;
 private->region[private->num_regions].flags = flags;
 private->region[private->num_regions].data = data;

 private->num_regions++;

 return 0;
}
