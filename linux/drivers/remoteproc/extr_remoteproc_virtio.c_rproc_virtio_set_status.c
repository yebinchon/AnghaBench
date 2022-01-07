
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct virtio_device {int dev; } ;
struct rproc_vdev {int rsc_offset; TYPE_1__* rproc; } ;
struct fw_rsc_vdev {int status; } ;
struct TYPE_2__ {scalar_t__ table_ptr; } ;


 int dev_dbg (int *,char*,int ) ;
 struct rproc_vdev* vdev_to_rvdev (struct virtio_device*) ;

__attribute__((used)) static void rproc_virtio_set_status(struct virtio_device *vdev, u8 status)
{
 struct rproc_vdev *rvdev = vdev_to_rvdev(vdev);
 struct fw_rsc_vdev *rsc;

 rsc = (void *)rvdev->rproc->table_ptr + rvdev->rsc_offset;

 rsc->status = status;
 dev_dbg(&vdev->dev, "status: %d\n", status);
}
