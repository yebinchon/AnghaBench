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
struct spi_master {int dummy; } ;
struct altera_spi {scalar_t__ count; scalar_t__ len; scalar_t__ base; int /*<<< orphan*/  imr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ ALTERA_SPI_CONTROL ; 
 int /*<<< orphan*/  ALTERA_SPI_CONTROL_IRRDY_MSK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct altera_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_master*) ; 
 struct altera_spi* FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev)
{
	struct spi_master *master = dev;
	struct altera_spi *hw = FUNC3(master);

	FUNC0(hw);

	if (hw->count < hw->len) {
		FUNC1(hw);
	} else {
		/* disable receive interrupt */
		hw->imr &= ~ALTERA_SPI_CONTROL_IRRDY_MSK;
		FUNC4(hw->imr, hw->base + ALTERA_SPI_CONTROL);

		FUNC2(master);
	}

	return IRQ_HANDLED;
}