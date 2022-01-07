
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dev; } ;
struct rproc_vdev {int rsc_offset; TYPE_1__* rproc; } ;
struct fw_rsc_vdev {size_t num_of_vrings; unsigned int config_len; int * vring; } ;
struct TYPE_2__ {scalar_t__ table_ptr; } ;


 int dev_err (int *,char*) ;
 int memcpy (void*,void*,unsigned int) ;
 struct rproc_vdev* vdev_to_rvdev (struct virtio_device*) ;

__attribute__((used)) static void rproc_virtio_get(struct virtio_device *vdev, unsigned int offset,
        void *buf, unsigned int len)
{
 struct rproc_vdev *rvdev = vdev_to_rvdev(vdev);
 struct fw_rsc_vdev *rsc;
 void *cfg;

 rsc = (void *)rvdev->rproc->table_ptr + rvdev->rsc_offset;
 cfg = &rsc->vring[rsc->num_of_vrings];

 if (offset + len > rsc->config_len || offset + len < len) {
  dev_err(&vdev->dev, "rproc_virtio_get: access out of bounds\n");
  return;
 }

 memcpy(buf, cfg + offset, len);
}
