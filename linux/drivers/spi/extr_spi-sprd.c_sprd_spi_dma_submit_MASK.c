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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SPRD_DMA_CHN_MODE_NONE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPRD_DMA_FRAG_REQ ; 
 int /*<<< orphan*/  SPRD_DMA_NO_TRG ; 
 int /*<<< orphan*/  SPRD_DMA_TRANS_INT ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long) ; 
 int FUNC4 (struct dma_chan*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *dma_chan,
			       struct dma_slave_config *c,
			       struct sg_table *sg,
			       enum dma_transfer_direction dir)
{
	struct dma_async_tx_descriptor *desc;
	dma_cookie_t cookie;
	unsigned long flags;
	int ret;

	ret = FUNC4(dma_chan, c);
	if (ret < 0)
		return ret;

	flags = FUNC0(SPRD_DMA_CHN_MODE_NONE, SPRD_DMA_NO_TRG,
			       SPRD_DMA_FRAG_REQ, SPRD_DMA_TRANS_INT);
	desc = FUNC3(dma_chan, sg->sgl, sg->nents, dir, flags);
	if (!desc)
		return  -ENODEV;

	cookie = FUNC5(desc);
	if (FUNC2(cookie))
		return FUNC2(cookie);

	FUNC1(dma_chan);

	return 0;
}