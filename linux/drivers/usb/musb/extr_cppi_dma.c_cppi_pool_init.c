
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cppi_descriptor {int dma; } ;
struct TYPE_2__ {int status; } ;
struct cppi_channel {int * freelist; scalar_t__ is_rndis; struct cppi* controller; TYPE_1__ channel; int * last_processed; int * tail; int * head; } ;
struct cppi {int pool; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int MUSB_DMA_STATUS_UNKNOWN ;
 int NUM_TXCHAN_BD ;
 int cppi_bd_free (struct cppi_channel*,struct cppi_descriptor*) ;
 struct cppi_descriptor* dma_pool_alloc (int ,int ,int *) ;

__attribute__((used)) static void cppi_pool_init(struct cppi *cppi, struct cppi_channel *c)
{
 int j;


 c->head = ((void*)0);
 c->tail = ((void*)0);
 c->last_processed = ((void*)0);
 c->channel.status = MUSB_DMA_STATUS_UNKNOWN;
 c->controller = cppi;
 c->is_rndis = 0;
 c->freelist = ((void*)0);


 for (j = 0; j < NUM_TXCHAN_BD + 1; j++) {
  struct cppi_descriptor *bd;
  dma_addr_t dma;

  bd = dma_pool_alloc(cppi->pool, GFP_KERNEL, &dma);
  bd->dma = dma;
  cppi_bd_free(c, bd);
 }
}
