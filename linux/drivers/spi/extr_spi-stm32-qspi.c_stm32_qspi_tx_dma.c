
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_qspi {int ctrl; scalar_t__ io_base; int dma_completion; struct dma_chan* dma_chtx; struct dma_chan* dma_chrx; } ;
struct TYPE_2__ {scalar_t__ dir; } ;
struct spi_mem_op {TYPE_1__ data; } ;
struct sg_table {int nents; int sgl; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int * callback_param; int callback; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int dma_cookie_t ;


 int CR_DMAEN ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int ENOMEM ;
 int ETIMEDOUT ;
 scalar_t__ QSPI_CR ;
 scalar_t__ SPI_MEM_DATA_IN ;
 int STM32_COMP_TIMEOUT_MS ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,int ,int,int,int ) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 int msecs_to_jiffies (int) ;
 int readl_relaxed (scalar_t__) ;
 int reinit_completion (int *) ;
 int spi_controller_dma_map_mem_op_data (int ,struct spi_mem_op const*,struct sg_table*) ;
 int spi_controller_dma_unmap_mem_op_data (int ,struct spi_mem_op const*,struct sg_table*) ;
 int stm32_qspi_dma_callback ;
 int wait_for_completion_timeout (int *,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32_qspi_tx_dma(struct stm32_qspi *qspi,
        const struct spi_mem_op *op)
{
 struct dma_async_tx_descriptor *desc;
 enum dma_transfer_direction dma_dir;
 struct dma_chan *dma_ch;
 struct sg_table sgt;
 dma_cookie_t cookie;
 u32 cr, t_out;
 int err;

 if (op->data.dir == SPI_MEM_DATA_IN) {
  dma_dir = DMA_DEV_TO_MEM;
  dma_ch = qspi->dma_chrx;
 } else {
  dma_dir = DMA_MEM_TO_DEV;
  dma_ch = qspi->dma_chtx;
 }





 err = spi_controller_dma_map_mem_op_data(qspi->ctrl, op, &sgt);
 if (err)
  return err;

 desc = dmaengine_prep_slave_sg(dma_ch, sgt.sgl, sgt.nents,
           dma_dir, DMA_PREP_INTERRUPT);
 if (!desc) {
  err = -ENOMEM;
  goto out_unmap;
 }

 cr = readl_relaxed(qspi->io_base + QSPI_CR);

 reinit_completion(&qspi->dma_completion);
 desc->callback = stm32_qspi_dma_callback;
 desc->callback_param = &qspi->dma_completion;
 cookie = dmaengine_submit(desc);
 err = dma_submit_error(cookie);
 if (err)
  goto out;

 dma_async_issue_pending(dma_ch);

 writel_relaxed(cr | CR_DMAEN, qspi->io_base + QSPI_CR);

 t_out = sgt.nents * STM32_COMP_TIMEOUT_MS;
 if (!wait_for_completion_timeout(&qspi->dma_completion,
      msecs_to_jiffies(t_out)))
  err = -ETIMEDOUT;

 if (err)
  dmaengine_terminate_all(dma_ch);

out:
 writel_relaxed(cr & ~CR_DMAEN, qspi->io_base + QSPI_CR);
out_unmap:
 spi_controller_dma_unmap_mem_op_data(qspi->ctrl, op, &sgt);

 return err;
}
