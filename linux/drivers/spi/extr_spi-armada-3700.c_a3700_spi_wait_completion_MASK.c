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
struct spi_device {int /*<<< orphan*/  master; } ;
struct a3700_spi {unsigned int wait_mask; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  A3700_SPI_IF_CTRL_REG ; 
 int /*<<< orphan*/  A3700_SPI_INT_MASK_REG ; 
 int /*<<< orphan*/  A3700_SPI_TIMEOUT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct a3700_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct a3700_spi*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC6(struct spi_device *spi)
{
	struct a3700_spi *a3700_spi;
	unsigned int timeout;
	unsigned int ctrl_reg;
	unsigned long timeout_jiffies;

	a3700_spi = FUNC2(spi->master);

	/* SPI interrupt is edge-triggered, which means an interrupt will
	 * be generated only when detecting a specific status bit changed
	 * from '0' to '1'. So when we start waiting for a interrupt, we
	 * need to check status bit in control reg first, if it is already 1,
	 * then we do not need to wait for interrupt
	 */
	ctrl_reg = FUNC3(a3700_spi, A3700_SPI_IF_CTRL_REG);
	if (a3700_spi->wait_mask & ctrl_reg)
		return true;

	FUNC1(&a3700_spi->done);

	FUNC4(a3700_spi, A3700_SPI_INT_MASK_REG,
		     a3700_spi->wait_mask);

	timeout_jiffies = FUNC0(A3700_SPI_TIMEOUT);
	timeout = FUNC5(&a3700_spi->done,
					      timeout_jiffies);

	a3700_spi->wait_mask = 0;

	if (timeout)
		return true;

	/* there might be the case that right after we checked the
	 * status bits in this routine and before start to wait for
	 * interrupt by wait_for_completion_timeout, the interrupt
	 * happens, to avoid missing it we need to double check
	 * status bits in control reg, if it is already 1, then
	 * consider that we have the interrupt successfully and
	 * return true.
	 */
	ctrl_reg = FUNC3(a3700_spi, A3700_SPI_IF_CTRL_REG);
	if (a3700_spi->wait_mask & ctrl_reg)
		return true;

	FUNC4(a3700_spi, A3700_SPI_INT_MASK_REG, 0);

	/* Timeout was reached */
	return false;
}