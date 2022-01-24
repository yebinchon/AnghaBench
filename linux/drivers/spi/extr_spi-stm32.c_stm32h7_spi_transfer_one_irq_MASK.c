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
struct stm32_spi {int /*<<< orphan*/  lock; scalar_t__ base; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  STM32H7_SPI_CR1 ; 
 int /*<<< orphan*/  STM32H7_SPI_CR1_CSTART ; 
 scalar_t__ STM32H7_SPI_IER ; 
 int STM32H7_SPI_IER_DXPIE ; 
 int STM32H7_SPI_IER_EOTIE ; 
 int STM32H7_SPI_IER_MODFIE ; 
 int STM32H7_SPI_IER_OVRIE ; 
 int STM32H7_SPI_IER_RXPIE ; 
 int STM32H7_SPI_IER_TXPIE ; 
 int STM32H7_SPI_IER_TXTFIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_spi*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_spi*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct stm32_spi *spi)
{
	unsigned long flags;
	u32 ier = 0;

	/* Enable the interrupts relative to the current communication mode */
	if (spi->tx_buf && spi->rx_buf)	/* Full Duplex */
		ier |= STM32H7_SPI_IER_DXPIE;
	else if (spi->tx_buf)		/* Half-Duplex TX dir or Simplex TX */
		ier |= STM32H7_SPI_IER_TXPIE;
	else if (spi->rx_buf)		/* Half-Duplex RX dir or Simplex RX */
		ier |= STM32H7_SPI_IER_RXPIE;

	/* Enable the interrupts relative to the end of transfer */
	ier |= STM32H7_SPI_IER_EOTIE | STM32H7_SPI_IER_TXTFIE |
	       STM32H7_SPI_IER_OVRIE | STM32H7_SPI_IER_MODFIE;

	FUNC0(&spi->lock, flags);

	FUNC2(spi);

	/* Be sure to have data in fifo before starting data transfer */
	if (spi->tx_buf)
		FUNC4(spi);

	FUNC3(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_CSTART);

	FUNC5(ier, spi->base + STM32H7_SPI_IER);

	FUNC1(&spi->lock, flags);

	return 1;
}