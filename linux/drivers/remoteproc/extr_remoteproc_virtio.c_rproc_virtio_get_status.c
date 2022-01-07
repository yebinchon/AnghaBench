
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct virtio_device {int dummy; } ;
struct rproc_vdev {int rsc_offset; TYPE_1__* rproc; } ;
struct fw_rsc_vdev {int status; } ;
struct TYPE_2__ {scalar_t__ table_ptr; } ;


 struct rproc_vdev* vdev_to_rvdev (struct virtio_device*) ;

__attribute__((used)) static u8 rproc_virtio_get_status(struct virtio_device *vdev)
{
 struct rproc_vdev *rvdev = vdev_to_rvdev(vdev);
 struct fw_rsc_vdev *rsc;

 rsc = (void *)rvdev->rproc->table_ptr + rvdev->rsc_offset;

 return rsc->status;
}
