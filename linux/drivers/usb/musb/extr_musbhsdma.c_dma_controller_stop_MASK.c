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
typedef  int u8 ;
struct musb_dma_controller {int used_channels; TYPE_1__* channel; struct musb* private_data; } ;
struct musb {int /*<<< orphan*/  controller; } ;
struct dma_channel {int dummy; } ;
struct TYPE_2__ {struct dma_channel channel; } ;

/* Variables and functions */
 int MUSB_HSDMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_channel*) ; 

__attribute__((used)) static void FUNC2(struct musb_dma_controller *controller)
{
	struct musb *musb = controller->private_data;
	struct dma_channel *channel;
	u8 bit;

	if (controller->used_channels != 0) {
		FUNC0(musb->controller,
			"Stopping DMA controller while channel active\n");

		for (bit = 0; bit < MUSB_HSDMA_CHANNELS; bit++) {
			if (controller->used_channels & (1 << bit)) {
				channel = &controller->channel[bit].channel;
				FUNC1(channel);

				if (!controller->used_channels)
					break;
			}
		}
	}
}