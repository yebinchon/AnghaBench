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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct net2272 {int dma_eot_polarity; int dma_dack_polarity; int dma_dreq_polarity; TYPE_1__ gadget; } ;

/* Variables and functions */
 int DACK_POLARITY ; 
 int DATA_WIDTH ; 
 int /*<<< orphan*/  DMAREQ ; 
 int DMA_BUFFER_VALID ; 
 int DMA_CONTROL_DACK ; 
 int DMA_ENDPOINT_SELECT ; 
 int DMA_MODE ; 
 int DMA_REQUEST_ENABLE ; 
 int DREQ_POLARITY ; 
 int EOT_POLARITY ; 
 int /*<<< orphan*/  IRQENB0 ; 
 int /*<<< orphan*/  IRQENB1 ; 
 int /*<<< orphan*/  IRQSTAT0 ; 
 int /*<<< orphan*/  IRQSTAT1 ; 
 int /*<<< orphan*/  LOCCTL ; 
 int /*<<< orphan*/  LOCCTL1 ; 
 int SUSPEND_REQUEST_INTERRUPT ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int dma_ep ; 
 int dma_mode ; 
 int fifo_mode ; 
 int /*<<< orphan*/  FUNC0 (struct net2272*) ; 
 int FUNC1 (struct net2272*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net2272*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net2272*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct net2272 *dev)
{
	dev->gadget.speed = USB_SPEED_UNKNOWN;

	FUNC0(dev);

	FUNC3(dev, IRQENB0, 0);
	FUNC3(dev, IRQENB1, 0);

	/* clear irq state */
	FUNC3(dev, IRQSTAT0, 0xff);
	FUNC3(dev, IRQSTAT1, ~(1 << SUSPEND_REQUEST_INTERRUPT));

	FUNC3(dev, DMAREQ,
		(0 << DMA_BUFFER_VALID) |
		(0 << DMA_REQUEST_ENABLE) |
		(1 << DMA_CONTROL_DACK) |
		(dev->dma_eot_polarity << EOT_POLARITY) |
		(dev->dma_dack_polarity << DACK_POLARITY) |
		(dev->dma_dreq_polarity << DREQ_POLARITY) |
		((dma_ep >> 1) << DMA_ENDPOINT_SELECT));

	FUNC0(dev);
	FUNC2(dev, (fifo_mode <= 3) ? fifo_mode : 0);

	/* Set the NET2272 ep fifo data width to 16-bit mode and for correct byte swapping
	 * note that the higher level gadget drivers are expected to convert data to little endian.
	 * Enable byte swap for your local bus/cpu if needed by setting BYTE_SWAP in LOCCTL here
	 */
	FUNC3(dev, LOCCTL, FUNC1(dev, LOCCTL) | (1 << DATA_WIDTH));
	FUNC3(dev, LOCCTL1, (dma_mode << DMA_MODE));
}