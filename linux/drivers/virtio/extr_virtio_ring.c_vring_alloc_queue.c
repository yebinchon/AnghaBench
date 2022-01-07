
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct virtio_device {TYPE_1__ dev; } ;
typedef scalar_t__ phys_addr_t ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 int PAGE_ALIGN (size_t) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 void* alloc_pages_exact (int ,int ) ;
 void* dma_alloc_coherent (int ,size_t,scalar_t__*,int ) ;
 int free_pages_exact (void*,int ) ;
 scalar_t__ virt_to_phys (void*) ;
 scalar_t__ vring_use_dma_api (struct virtio_device*) ;

__attribute__((used)) static void *vring_alloc_queue(struct virtio_device *vdev, size_t size,
         dma_addr_t *dma_handle, gfp_t flag)
{
 if (vring_use_dma_api(vdev)) {
  return dma_alloc_coherent(vdev->dev.parent, size,
       dma_handle, flag);
 } else {
  void *queue = alloc_pages_exact(PAGE_ALIGN(size), flag);

  if (queue) {
   phys_addr_t phys_addr = virt_to_phys(queue);
   *dma_handle = (dma_addr_t)phys_addr;
   if (WARN_ON_ONCE(*dma_handle != phys_addr)) {
    free_pages_exact(queue, PAGE_ALIGN(size));
    return ((void*)0);
   }
  }
  return queue;
 }
}
