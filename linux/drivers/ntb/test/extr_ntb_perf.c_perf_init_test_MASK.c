#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_thread {int /*<<< orphan*/  dma_sync; int /*<<< orphan*/  src; int /*<<< orphan*/  tidx; int /*<<< orphan*/  dma_chan; struct perf_ctx* perf; } ;
struct perf_ctx {int /*<<< orphan*/  twait; int /*<<< orphan*/  tsync; TYPE_2__* ntb; TYPE_1__* test_peer; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  outbuf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct perf_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_dma_filter ; 
 int /*<<< orphan*/  use_dma ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct perf_thread *pthr)
{
	struct perf_ctx *perf = pthr->perf;
	dma_cap_mask_t dma_mask;

	pthr->src = FUNC9(perf->test_peer->outbuf_size, GFP_KERNEL,
				 FUNC3(&perf->ntb->dev));
	if (!pthr->src)
		return -ENOMEM;

	FUNC7(pthr->src, perf->test_peer->outbuf_size);

	if (!use_dma)
		return 0;

	FUNC5(dma_mask);
	FUNC4(DMA_MEMCPY, dma_mask);
	pthr->dma_chan = FUNC6(dma_mask, perf_dma_filter, perf);
	if (!pthr->dma_chan) {
		FUNC2(&perf->ntb->dev, "%d: Failed to get DMA channel\n",
			pthr->tidx);
		FUNC0(&perf->tsync);
		FUNC10(&perf->twait);
		FUNC8(pthr->src);
		return -ENODEV;
	}

	FUNC1(&pthr->dma_sync, 0);

	return 0;
}