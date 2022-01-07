
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fifo {int size; int avail; } ;



__attribute__((used)) static inline int dma_fifo_level(struct dma_fifo *fifo)
{
 return fifo->size - fifo->avail;
}
