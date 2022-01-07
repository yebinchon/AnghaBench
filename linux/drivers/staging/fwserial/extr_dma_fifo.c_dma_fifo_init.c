
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fifo {int pending; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct dma_fifo*,int ,int) ;

void dma_fifo_init(struct dma_fifo *fifo)
{
 memset(fifo, 0, sizeof(*fifo));
 INIT_LIST_HEAD(&fifo->pending);
}
