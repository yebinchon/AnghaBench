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
struct tusb_omap_dma_ch {TYPE_1__* dma_data; int /*<<< orphan*/  epnum; struct musb* musb; } ;
struct musb {int /*<<< orphan*/  controller; } ;
struct dma_channel {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DMA_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tusb_omap_dma_ch* FUNC2 (struct dma_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct tusb_omap_dma_ch*) ; 

__attribute__((used)) static void FUNC4(struct dma_channel *channel)
{
	struct tusb_omap_dma_ch	*chdat = FUNC2(channel);
	struct musb		*musb = chdat->musb;

	FUNC0(musb->controller, "Release for ep%i\n", chdat->epnum);

	channel->status = MUSB_DMA_STATUS_UNKNOWN;

	FUNC1(chdat->dma_data->chan);
	FUNC3(chdat);

	channel = NULL;
}