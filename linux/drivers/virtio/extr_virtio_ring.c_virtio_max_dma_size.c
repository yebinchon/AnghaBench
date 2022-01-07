
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dev; } ;


 size_t SIZE_MAX ;
 size_t dma_max_mapping_size (int *) ;
 scalar_t__ vring_use_dma_api (struct virtio_device*) ;

size_t virtio_max_dma_size(struct virtio_device *vdev)
{
 size_t max_segment_size = SIZE_MAX;

 if (vring_use_dma_api(vdev))
  max_segment_size = dma_max_mapping_size(&vdev->dev);

 return max_segment_size;
}
