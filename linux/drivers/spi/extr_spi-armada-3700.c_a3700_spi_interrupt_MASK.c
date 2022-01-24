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
typedef  int u32 ;
struct spi_master {int dummy; } ;
struct a3700_spi {int wait_mask; int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  A3700_SPI_INT_MASK_REG ; 
 int /*<<< orphan*/  A3700_SPI_INT_STAT_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct a3700_spi* FUNC1 (struct spi_master*) ; 
 int FUNC2 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a3700_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct spi_master *master = dev_id;
	struct a3700_spi *a3700_spi;
	u32 cause;

	a3700_spi = FUNC1(master);

	/* Get interrupt causes */
	cause = FUNC2(a3700_spi, A3700_SPI_INT_STAT_REG);

	if (!cause || !(a3700_spi->wait_mask & cause))
		return IRQ_NONE;

	/* mask and acknowledge the SPI interrupts */
	FUNC3(a3700_spi, A3700_SPI_INT_MASK_REG, 0);
	FUNC3(a3700_spi, A3700_SPI_INT_STAT_REG, cause);

	/* Wake up the transfer */
	FUNC0(&a3700_spi->done);

	return IRQ_HANDLED;
}