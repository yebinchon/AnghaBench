
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct virtio_device {TYPE_1__ dev; } ;
typedef int dma_addr_t ;


 int PAGE_ALIGN (size_t) ;
 int dma_free_coherent (int ,size_t,void*,int ) ;
 int free_pages_exact (void*,int ) ;
 scalar_t__ vring_use_dma_api (struct virtio_device*) ;

__attribute__((used)) static void vring_free_queue(struct virtio_device *vdev, size_t size,
        void *queue, dma_addr_t dma_handle)
{
 if (vring_use_dma_api(vdev))
  dma_free_coherent(vdev->dev.parent, size, queue, dma_handle);
 else
  free_pages_exact(queue, PAGE_ALIGN(size));
}
