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
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  actual_len; } ;
struct ux500_dma_channel {int /*<<< orphan*/  is_tx; TYPE_1__ channel; int /*<<< orphan*/  cur_len; struct musb_hw_ep* hw_ep; } ;
struct musb_hw_ep {int /*<<< orphan*/  epnum; struct musb* musb; } ;
struct musb {int /*<<< orphan*/  lock; int /*<<< orphan*/  controller; } ;
struct dma_channel {struct ux500_dma_channel* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DMA_STATUS_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void *private_data)
{
	struct dma_channel *channel = private_data;
	struct ux500_dma_channel *ux500_channel = channel->private_data;
	struct musb_hw_ep       *hw_ep = ux500_channel->hw_ep;
	struct musb *musb = hw_ep->musb;
	unsigned long flags;

	FUNC0(musb->controller, "DMA rx transfer done on hw_ep=%d\n",
		hw_ep->epnum);

	FUNC2(&musb->lock, flags);
	ux500_channel->channel.actual_len = ux500_channel->cur_len;
	ux500_channel->channel.status = MUSB_DMA_STATUS_FREE;
	FUNC1(musb, hw_ep->epnum, ux500_channel->is_tx);
	FUNC3(&musb->lock, flags);

}