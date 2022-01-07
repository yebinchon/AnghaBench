
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_qspi {scalar_t__ dma_chrx; scalar_t__ dma_chtx; } ;


 int dma_release_channel (scalar_t__) ;

__attribute__((used)) static void stm32_qspi_dma_free(struct stm32_qspi *qspi)
{
 if (qspi->dma_chtx)
  dma_release_channel(qspi->dma_chtx);
 if (qspi->dma_chrx)
  dma_release_channel(qspi->dma_chrx);
}
