#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct stm32_qspi {int /*<<< orphan*/  ctrl; scalar_t__ io_base; int /*<<< orphan*/  dma_completion; struct dma_chan* dma_chtx; struct dma_chan* dma_chrx; } ;
struct TYPE_2__ {scalar_t__ dir; } ;
struct spi_mem_op {TYPE_1__ data; } ;
struct sg_table {int nents; int /*<<< orphan*/  sgl; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/ * callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int CR_DMAEN ; 
 int DMA_DEV_TO_MEM ; 
 int DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 scalar_t__ QSPI_CR ; 
 scalar_t__ SPI_MEM_DATA_IN ; 
 int STM32_COMP_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC2 (struct dma_chan*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct spi_mem_op const*,struct sg_table*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct spi_mem_op const*,struct sg_table*) ; 
 int /*<<< orphan*/  stm32_qspi_dma_callback ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct stm32_qspi *qspi,
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

	/*
	 * spi_map_buf return -EINVAL if the buffer is not DMA-able
	 * (DMA-able: in vmalloc | kmap | virt_addr_valid)
	 */
	err = FUNC8(qspi->ctrl, op, &sgt);
	if (err)
		return err;

	desc = FUNC2(dma_ch, sgt.sgl, sgt.nents,
				       dma_dir, DMA_PREP_INTERRUPT);
	if (!desc) {
		err = -ENOMEM;
		goto out_unmap;
	}

	cr = FUNC6(qspi->io_base + QSPI_CR);

	FUNC7(&qspi->dma_completion);
	desc->callback = stm32_qspi_dma_callback;
	desc->callback_param = &qspi->dma_completion;
	cookie = FUNC3(desc);
	err = FUNC1(cookie);
	if (err)
		goto out;

	FUNC0(dma_ch);

	FUNC11(cr | CR_DMAEN, qspi->io_base + QSPI_CR);

	t_out = sgt.nents * STM32_COMP_TIMEOUT_MS;
	if (!FUNC10(&qspi->dma_completion,
					 FUNC5(t_out)))
		err = -ETIMEDOUT;

	if (err)
		FUNC4(dma_ch);

out:
	FUNC11(cr & ~CR_DMAEN, qspi->io_base + QSPI_CR);
out_unmap:
	FUNC9(qspi->ctrl, op, &sgt);

	return err;
}