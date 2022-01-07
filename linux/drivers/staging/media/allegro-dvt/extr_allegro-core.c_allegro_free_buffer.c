
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct allegro_dev {TYPE_1__* plat_dev; } ;
struct allegro_buffer {scalar_t__ size; int * vaddr; int paddr; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,scalar_t__,int *,int ) ;

__attribute__((used)) static void allegro_free_buffer(struct allegro_dev *dev,
    struct allegro_buffer *buffer)
{
 if (buffer->vaddr) {
  dma_free_coherent(&dev->plat_dev->dev, buffer->size,
      buffer->vaddr, buffer->paddr);
  buffer->vaddr = ((void*)0);
  buffer->size = 0;
 }
}
