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
struct mtk_hsdma_desc {int /*<<< orphan*/  vdesc; TYPE_2__* sg; } ;
struct mtk_hsdma_chan {int /*<<< orphan*/  vchan; } ;
struct dma_chan {TYPE_1__* device; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  void* dma_addr_t ;
struct TYPE_4__ {size_t len; void* dst_addr; void* src_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mtk_hsdma_desc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct mtk_hsdma_chan* FUNC2 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC4(
		struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
		size_t len, unsigned long flags)
{
	struct mtk_hsdma_chan *chan = FUNC2(c);
	struct mtk_hsdma_desc *desc;

	if (len <= 0)
		return NULL;

	desc = FUNC1(sizeof(*desc), GFP_ATOMIC);
	if (!desc) {
		FUNC0(c->device->dev, "alloc memcpy decs error\n");
		return NULL;
	}

	desc->sg[0].src_addr = src;
	desc->sg[0].dst_addr = dest;
	desc->sg[0].len = len;

	return FUNC3(&chan->vchan, &desc->vdesc, flags);
}