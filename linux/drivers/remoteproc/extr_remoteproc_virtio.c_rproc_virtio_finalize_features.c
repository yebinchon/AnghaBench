
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct virtio_device {scalar_t__ features; } ;
struct rproc_vdev {int rsc_offset; TYPE_1__* rproc; } ;
struct fw_rsc_vdev {scalar_t__ gfeatures; } ;
struct TYPE_2__ {scalar_t__ table_ptr; } ;


 int BUG_ON (int) ;
 int rproc_transport_features (struct virtio_device*) ;
 struct rproc_vdev* vdev_to_rvdev (struct virtio_device*) ;
 int vring_transport_features (struct virtio_device*) ;

__attribute__((used)) static int rproc_virtio_finalize_features(struct virtio_device *vdev)
{
 struct rproc_vdev *rvdev = vdev_to_rvdev(vdev);
 struct fw_rsc_vdev *rsc;

 rsc = (void *)rvdev->rproc->table_ptr + rvdev->rsc_offset;


 vring_transport_features(vdev);


 rproc_transport_features(vdev);


 BUG_ON((u32)vdev->features != vdev->features);





 rsc->gfeatures = vdev->features;

 return 0;
}
