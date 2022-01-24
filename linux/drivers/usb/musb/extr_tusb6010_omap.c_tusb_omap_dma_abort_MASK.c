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
struct tusb_omap_dma_ch {TYPE_1__* dma_data; } ;
struct dma_channel {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DMA_STATUS_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tusb_omap_dma_ch* FUNC1 (struct dma_channel*) ; 

__attribute__((used)) static int FUNC2(struct dma_channel *channel)
{
	struct tusb_omap_dma_ch	*chdat = FUNC1(channel);

	if (chdat->dma_data)
		FUNC0(chdat->dma_data->chan);

	channel->status = MUSB_DMA_STATUS_FREE;

	return 0;
}