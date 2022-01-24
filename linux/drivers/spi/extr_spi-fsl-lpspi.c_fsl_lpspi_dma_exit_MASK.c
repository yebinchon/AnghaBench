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
struct spi_controller {int /*<<< orphan*/ * dma_tx; int /*<<< orphan*/ * dma_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct spi_controller *controller)
{
	if (controller->dma_rx) {
		FUNC0(controller->dma_rx);
		controller->dma_rx = NULL;
	}

	if (controller->dma_tx) {
		FUNC0(controller->dma_tx);
		controller->dma_tx = NULL;
	}
}