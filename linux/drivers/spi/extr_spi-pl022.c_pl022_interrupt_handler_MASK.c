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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct spi_message {scalar_t__ state; int /*<<< orphan*/  actual_length; } ;
struct pl022 {scalar_t__ tx; scalar_t__ tx_end; scalar_t__ rx; scalar_t__ rx_end; int /*<<< orphan*/  pump_transfers; TYPE_2__* cur_transfer; TYPE_1__* adev; int /*<<< orphan*/  virtbase; struct spi_message* cur_msg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {scalar_t__ cs_change; scalar_t__ len; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CLEAR_ALL_INTERRUPTS ; 
 int DISABLE_ALL_INTERRUPTS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SSP_CHIP_DESELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SSP_CR1_MASK_SSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SSP_IMSC_MASK_RXIM ; 
 int SSP_IMSC_MASK_TXIM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SSP_MIS_MASK_RORMIS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int SSP_SR_MASK_RFF ; 
 scalar_t__ STATE_DONE ; 
 scalar_t__ STATE_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct pl022*) ; 
 int /*<<< orphan*/  FUNC8 (struct pl022*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pl022*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *dev_id)
{
	struct pl022 *pl022 = dev_id;
	struct spi_message *msg = pl022->cur_msg;
	u16 irq_status = 0;

	if (FUNC12(!msg)) {
		FUNC5(&pl022->adev->dev,
			"bad message state in interrupt handler");
		/* Never fail */
		return IRQ_HANDLED;
	}

	/* Read the Interrupt Status Register */
	irq_status = FUNC9(FUNC3(pl022->virtbase));

	if (FUNC12(!irq_status))
		return IRQ_NONE;

	/*
	 * This handles the FIFO interrupts, the timeout
	 * interrupts are flatly ignored, they cannot be
	 * trusted.
	 */
	if (FUNC12(irq_status & SSP_MIS_MASK_RORMIS)) {
		/*
		 * Overrun interrupt - bail out since our Data has been
		 * corrupted
		 */
		FUNC5(&pl022->adev->dev, "FIFO overrun\n");
		if (FUNC9(FUNC4(pl022->virtbase)) & SSP_SR_MASK_RFF)
			FUNC5(&pl022->adev->dev,
				"RXFIFO is full\n");

		/*
		 * Disable and clear interrupts, disable SSP,
		 * mark message with bad status so it can be
		 * retried.
		 */
		FUNC13(DISABLE_ALL_INTERRUPTS,
		       FUNC2(pl022->virtbase));
		FUNC13(CLEAR_ALL_INTERRUPTS, FUNC1(pl022->virtbase));
		FUNC13((FUNC9(FUNC0(pl022->virtbase)) &
			(~SSP_CR1_MASK_SSE)), FUNC0(pl022->virtbase));
		msg->state = STATE_ERROR;

		/* Schedule message queue handler */
		FUNC11(&pl022->pump_transfers);
		return IRQ_HANDLED;
	}

	FUNC10(pl022);

	if (pl022->tx == pl022->tx_end) {
		/* Disable Transmit interrupt, enable receive interrupt */
		FUNC13((FUNC9(FUNC2(pl022->virtbase)) &
		       ~SSP_IMSC_MASK_TXIM) | SSP_IMSC_MASK_RXIM,
		       FUNC2(pl022->virtbase));
	}

	/*
	 * Since all transactions must write as much as shall be read,
	 * we can conclude the entire transaction once RX is complete.
	 * At this point, all TX will always be finished.
	 */
	if (pl022->rx >= pl022->rx_end) {
		FUNC13(DISABLE_ALL_INTERRUPTS,
		       FUNC2(pl022->virtbase));
		FUNC13(CLEAR_ALL_INTERRUPTS, FUNC1(pl022->virtbase));
		if (FUNC12(pl022->rx > pl022->rx_end)) {
			FUNC6(&pl022->adev->dev, "read %u surplus "
				 "bytes (did you request an odd "
				 "number of bytes on a 16bit bus?)\n",
				 (u32) (pl022->rx - pl022->rx_end));
		}
		/* Update total bytes transferred */
		msg->actual_length += pl022->cur_transfer->len;
		/* Move to next transfer */
		msg->state = FUNC7(pl022);
		if (msg->state != STATE_DONE && pl022->cur_transfer->cs_change)
			FUNC8(pl022, SSP_CHIP_DESELECT);
		FUNC11(&pl022->pump_transfers);
		return IRQ_HANDLED;
	}

	return IRQ_HANDLED;
}