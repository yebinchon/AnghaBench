
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dev; } ;
struct rproc_vdev {int rsc_offset; TYPE_1__* rproc; } ;
struct fw_rsc_vdev {scalar_t__ status; } ;
struct TYPE_2__ {scalar_t__ table_ptr; } ;


 int dev_dbg (int *,char*) ;
 struct rproc_vdev* vdev_to_rvdev (struct virtio_device*) ;

__attribute__((used)) static void rproc_virtio_reset(struct virtio_device *vdev)
{
 struct rproc_vdev *rvdev = vdev_to_rvdev(vdev);
 struct fw_rsc_vdev *rsc;

 rsc = (void *)rvdev->rproc->table_ptr + rvdev->rsc_offset;

 rsc->status = 0;
 dev_dbg(&vdev->dev, "reset !\n");
}
