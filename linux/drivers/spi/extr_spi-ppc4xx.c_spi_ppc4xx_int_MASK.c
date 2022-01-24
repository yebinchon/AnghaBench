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
struct ppc4xx_spi {unsigned int count; int* rx; unsigned int len; int* tx; int /*<<< orphan*/  done; TYPE_1__* regs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  cr; int /*<<< orphan*/  txd; int /*<<< orphan*/  rxd; int /*<<< orphan*/  sr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SPI_PPC4XX_CR_STR ; 
 int SPI_PPC4XX_SR_BSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct ppc4xx_spi *hw;
	u8 status;
	u8 data;
	unsigned int count;

	hw = (struct ppc4xx_spi *)dev_id;

	status = FUNC3(&hw->regs->sr);
	if (!status)
		return IRQ_NONE;

	/*
	 * BSY de-asserts one cycle after the transfer is complete.  The
	 * interrupt is asserted after the transfer is complete.  The exact
	 * relationship is not documented, hence this code.
	 */

	if (FUNC6(status & SPI_PPC4XX_SR_BSY)) {
		u8 lstatus;
		int cnt = 0;

		FUNC1(hw->dev, "got interrupt but spi still busy?\n");
		do {
			FUNC4(10);
			lstatus = FUNC3(&hw->regs->sr);
		} while (++cnt < 100 && lstatus & SPI_PPC4XX_SR_BSY);

		if (cnt >= 100) {
			FUNC2(hw->dev, "busywait: too many loops!\n");
			FUNC0(&hw->done);
			return IRQ_HANDLED;
		} else {
			/* status is always 1 (RBR) here */
			status = FUNC3(&hw->regs->sr);
			FUNC1(hw->dev, "loops %d status %x\n", cnt, status);
		}
	}

	count = hw->count;
	hw->count++;

	/* RBR triggered this interrupt.  Therefore, data must be ready. */
	data = FUNC3(&hw->regs->rxd);
	if (hw->rx)
		hw->rx[count] = data;

	count++;

	if (count < hw->len) {
		data = hw->tx ? hw->tx[count] : 0;
		FUNC5(&hw->regs->txd, data);
		FUNC5(&hw->regs->cr, SPI_PPC4XX_CR_STR);
	} else {
		FUNC0(&hw->done);
	}

	return IRQ_HANDLED;
}