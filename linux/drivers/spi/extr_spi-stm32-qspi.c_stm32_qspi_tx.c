
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_qspi {scalar_t__ fmode; scalar_t__ dma_chtx; scalar_t__ dma_chrx; } ;
struct TYPE_2__ {scalar_t__ dir; int nbytes; } ;
struct spi_mem_op {TYPE_1__ data; } ;


 scalar_t__ CCR_FMODE_MM ;
 scalar_t__ SPI_MEM_DATA_IN ;
 scalar_t__ SPI_MEM_DATA_OUT ;
 int stm32_qspi_tx_dma (struct stm32_qspi*,struct spi_mem_op const*) ;
 int stm32_qspi_tx_mm (struct stm32_qspi*,struct spi_mem_op const*) ;
 int stm32_qspi_tx_poll (struct stm32_qspi*,struct spi_mem_op const*) ;

__attribute__((used)) static int stm32_qspi_tx(struct stm32_qspi *qspi, const struct spi_mem_op *op)
{
 if (!op->data.nbytes)
  return 0;

 if (qspi->fmode == CCR_FMODE_MM)
  return stm32_qspi_tx_mm(qspi, op);
 else if ((op->data.dir == SPI_MEM_DATA_IN && qspi->dma_chrx) ||
   (op->data.dir == SPI_MEM_DATA_OUT && qspi->dma_chtx))
  if (!stm32_qspi_tx_dma(qspi, op))
   return 0;

 return stm32_qspi_tx_poll(qspi, op);
}
