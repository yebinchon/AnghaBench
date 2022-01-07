
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ccw_private {int cmd_region; } ;
struct ccw_cmd_region {int dummy; } ;


 int VFIO_REGION_INFO_FLAG_READ ;
 int VFIO_REGION_INFO_FLAG_WRITE ;
 int VFIO_REGION_SUBTYPE_CCW_ASYNC_CMD ;
 int vfio_ccw_async_region_ops ;
 int vfio_ccw_register_dev_region (struct vfio_ccw_private*,int ,int *,int,int,int ) ;

int vfio_ccw_register_async_dev_regions(struct vfio_ccw_private *private)
{
 return vfio_ccw_register_dev_region(private,
         VFIO_REGION_SUBTYPE_CCW_ASYNC_CMD,
         &vfio_ccw_async_region_ops,
         sizeof(struct ccw_cmd_region),
         VFIO_REGION_INFO_FLAG_READ |
         VFIO_REGION_INFO_FLAG_WRITE,
         private->cmd_region);
}
