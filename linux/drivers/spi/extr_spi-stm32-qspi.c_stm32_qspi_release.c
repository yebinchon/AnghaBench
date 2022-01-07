
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_qspi {int ctrl; int clk; int lock; scalar_t__ io_base; } ;


 scalar_t__ QSPI_CR ;
 int clk_disable_unprepare (int ) ;
 int mutex_destroy (int *) ;
 int spi_master_put (int ) ;
 int stm32_qspi_dma_free (struct stm32_qspi*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_qspi_release(struct stm32_qspi *qspi)
{

 writel_relaxed(0, qspi->io_base + QSPI_CR);
 stm32_qspi_dma_free(qspi);
 mutex_destroy(&qspi->lock);
 clk_disable_unprepare(qspi->clk);
 spi_master_put(qspi->ctrl);
}
