
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fifo {scalar_t__ open; scalar_t__ open_limit; } ;



__attribute__((used)) static inline bool dma_fifo_busy(struct dma_fifo *fifo)
{
 return fifo->open == fifo->open_limit;
}
