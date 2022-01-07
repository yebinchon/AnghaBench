
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_spi {int xfer_done; } ;


 int complete (int *) ;

__attribute__((used)) static void pic32_spi_dma_rx_notify(void *data)
{
 struct pic32_spi *pic32s = data;

 complete(&pic32s->xfer_done);
}
