
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pic32_spi {TYPE_1__* master; int flags; } ;
struct TYPE_2__ {scalar_t__ dma_tx; scalar_t__ dma_rx; } ;


 int PIC32F_DMA_PREP ;
 int clear_bit (int ,int *) ;
 int dma_release_channel (scalar_t__) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void pic32_spi_dma_unprep(struct pic32_spi *pic32s)
{
 if (!test_bit(PIC32F_DMA_PREP, &pic32s->flags))
  return;

 clear_bit(PIC32F_DMA_PREP, &pic32s->flags);
 if (pic32s->master->dma_rx)
  dma_release_channel(pic32s->master->dma_rx);

 if (pic32s->master->dma_tx)
  dma_release_channel(pic32s->master->dma_tx);
}
