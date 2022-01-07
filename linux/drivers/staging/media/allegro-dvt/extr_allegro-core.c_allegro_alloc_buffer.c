
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct allegro_dev {TYPE_1__* plat_dev; } ;
struct allegro_buffer {size_t size; int vaddr; int paddr; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,size_t,int *,int ) ;

__attribute__((used)) static int allegro_alloc_buffer(struct allegro_dev *dev,
    struct allegro_buffer *buffer, size_t size)
{
 buffer->vaddr = dma_alloc_coherent(&dev->plat_dev->dev, size,
        &buffer->paddr, GFP_KERNEL);
 if (!buffer->vaddr)
  return -ENOMEM;
 buffer->size = size;

 return 0;
}
