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
struct usbhs_fifo {int /*<<< orphan*/  rx_slave; void* rx_chan; int /*<<< orphan*/  tx_slave; void* tx_chan; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbhsf_dma_filter ; 

__attribute__((used)) static void FUNC3(struct usbhs_fifo *fifo)
{
	dma_cap_mask_t mask;

	FUNC1(mask);
	FUNC0(DMA_SLAVE, mask);
	fifo->tx_chan = FUNC2(mask, usbhsf_dma_filter,
					    &fifo->tx_slave);

	FUNC1(mask);
	FUNC0(DMA_SLAVE, mask);
	fifo->rx_chan = FUNC2(mask, usbhsf_dma_filter,
					    &fifo->rx_slave);
}