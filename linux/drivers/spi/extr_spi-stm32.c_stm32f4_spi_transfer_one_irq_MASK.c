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
struct stm32_spi {scalar_t__ cur_comm; int /*<<< orphan*/  lock; scalar_t__ tx_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SPI_3WIRE_TX ; 
 scalar_t__ SPI_FULL_DUPLEX ; 
 scalar_t__ SPI_SIMPLEX_TX ; 
 int /*<<< orphan*/  STM32F4_SPI_CR2 ; 
 int STM32F4_SPI_CR2_ERRIE ; 
 int STM32F4_SPI_CR2_RXNEIE ; 
 int STM32F4_SPI_CR2_TXEIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_spi*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_spi*) ; 

__attribute__((used)) static int FUNC5(struct stm32_spi *spi)
{
	unsigned long flags;
	u32 cr2 = 0;

	/* Enable the interrupts relative to the current communication mode */
	if (spi->cur_comm == SPI_SIMPLEX_TX || spi->cur_comm == SPI_3WIRE_TX) {
		cr2 |= STM32F4_SPI_CR2_TXEIE;
	} else if (spi->cur_comm == SPI_FULL_DUPLEX) {
		/* In transmit-only mode, the OVR flag is set in the SR register
		 * since the received data are never read. Therefore set OVR
		 * interrupt only when rx buffer is available.
		 */
		cr2 |= STM32F4_SPI_CR2_RXNEIE | STM32F4_SPI_CR2_ERRIE;
	} else {
		return -EINVAL;
	}

	FUNC0(&spi->lock, flags);

	FUNC3(spi, STM32F4_SPI_CR2, cr2);

	FUNC2(spi);

	/* starting data transfer when buffer is loaded */
	if (spi->tx_buf)
		FUNC4(spi);

	FUNC1(&spi->lock, flags);

	return 1;
}