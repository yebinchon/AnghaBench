
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; int dev; } ;
struct nvdimm_bus {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct virtio_device*) ;int (* del_vqs ) (struct virtio_device*) ;} ;


 struct nvdimm_bus* dev_get_drvdata (int *) ;
 int nvdimm_bus_unregister (struct nvdimm_bus*) ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;

__attribute__((used)) static void virtio_pmem_remove(struct virtio_device *vdev)
{
 struct nvdimm_bus *nvdimm_bus = dev_get_drvdata(&vdev->dev);

 nvdimm_bus_unregister(nvdimm_bus);
 vdev->config->del_vqs(vdev);
 vdev->config->reset(vdev);
}
