#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spi_qup {int dummy; } ;
struct spi_master {struct dma_chan* dma_rx; struct dma_chan* dma_tx; } ;
struct scatterlist {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct spi_qup* callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_async_tx_callback ;

/* Variables and functions */
 int DMA_MEM_TO_DEV ; 
 unsigned long DMA_PREP_FENCE ; 
 unsigned long DMA_PREP_INTERRUPT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dma_async_tx_descriptor*) ; 
 int FUNC1 (struct dma_async_tx_descriptor*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct dma_chan*,struct scatterlist*,unsigned int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 
 struct spi_qup* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct spi_master *master, struct scatterlist *sgl,
			   unsigned int nents, enum dma_transfer_direction dir,
			   dma_async_tx_callback callback)
{
	struct spi_qup *qup = FUNC5(master);
	unsigned long flags = DMA_PREP_INTERRUPT | DMA_PREP_FENCE;
	struct dma_async_tx_descriptor *desc;
	struct dma_chan *chan;
	dma_cookie_t cookie;

	if (dir == DMA_MEM_TO_DEV)
		chan = master->dma_tx;
	else
		chan = master->dma_rx;

	desc = FUNC3(chan, sgl, nents, dir, flags);
	if (FUNC0(desc))
		return desc ? FUNC1(desc) : -EINVAL;

	desc->callback = callback;
	desc->callback_param = qup;

	cookie = FUNC4(desc);

	return FUNC2(cookie);
}