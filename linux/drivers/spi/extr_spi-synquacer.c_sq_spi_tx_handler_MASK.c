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
typedef  int uint32_t ;
struct synquacer_spi {scalar_t__ tx_words; int /*<<< orphan*/  transfer_done; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SYNQUACER_HSSPI_REG_TXE ; 
 scalar_t__ SYNQUACER_HSSPI_REG_TXF ; 
 int SYNQUACER_HSSPI_TXF_FIFO_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct synquacer_spi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *priv)
{
	uint32_t val;
	struct synquacer_spi *sspi = priv;

	val = FUNC1(sspi->regs + SYNQUACER_HSSPI_REG_TXF);
	if (val & SYNQUACER_HSSPI_TXF_FIFO_EMPTY) {
		if (sspi->tx_words == 0) {
			FUNC3(0, sspi->regs + SYNQUACER_HSSPI_REG_TXE);
			FUNC0(&sspi->transfer_done);
		} else {
			FUNC2(sspi);
		}
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}