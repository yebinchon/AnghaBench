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
struct synquacer_spi {scalar_t__ rx_words; int /*<<< orphan*/  transfer_done; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SYNQUACER_HSSPI_REG_RXE ; 
 scalar_t__ SYNQUACER_HSSPI_REG_RXF ; 
 int SYNQUACER_HSSPI_RXF_FIFO_MORE_THAN_THRESHOLD ; 
 int SYNQUACER_HSSPI_RXF_SLAVE_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct synquacer_spi*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *priv)
{
	uint32_t val;
	struct synquacer_spi *sspi = priv;

	val = FUNC2(sspi->regs + SYNQUACER_HSSPI_REG_RXF);
	if ((val & SYNQUACER_HSSPI_RXF_SLAVE_RELEASED) ||
	    (val & SYNQUACER_HSSPI_RXF_FIFO_MORE_THAN_THRESHOLD)) {
		FUNC1(sspi);

		if (sspi->rx_words == 0) {
			FUNC3(0, sspi->regs + SYNQUACER_HSSPI_REG_RXE);
			FUNC0(&sspi->transfer_done);
		}
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}