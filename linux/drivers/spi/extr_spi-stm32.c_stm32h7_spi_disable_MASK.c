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
struct stm32_spi {scalar_t__ rx_len; int /*<<< orphan*/  lock; scalar_t__ base; scalar_t__ dma_rx; scalar_t__ cur_usedma; scalar_t__ dma_tx; scalar_t__ rx_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ STM32H7_SPI_CFG1 ; 
 int STM32H7_SPI_CFG1_RXDMAEN ; 
 int STM32H7_SPI_CFG1_TXDMAEN ; 
 scalar_t__ STM32H7_SPI_CR1 ; 
 int STM32H7_SPI_CR1_CSTART ; 
 int STM32H7_SPI_CR1_CSUSP ; 
 int STM32H7_SPI_CR1_SPE ; 
 scalar_t__ STM32H7_SPI_IER ; 
 scalar_t__ STM32H7_SPI_IFCR ; 
 int STM32H7_SPI_IFCR_ALL ; 
 scalar_t__ STM32H7_SPI_SR ; 
 int STM32H7_SPI_SR_EOT ; 
 int STM32H7_SPI_SR_SUSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_spi*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_spi*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct stm32_spi *spi)
{
	unsigned long flags;
	u32 cr1, sr;

	FUNC0(spi->dev, "disable controller\n");

	FUNC5(&spi->lock, flags);

	cr1 = FUNC3(spi->base + STM32H7_SPI_CR1);

	if (!(cr1 & STM32H7_SPI_CR1_SPE)) {
		FUNC6(&spi->lock, flags);
		return;
	}

	/* Wait on EOT or suspend the flow */
	if (FUNC4(spi->base + STM32H7_SPI_SR,
					      sr, !(sr & STM32H7_SPI_SR_EOT),
					      10, 100000) < 0) {
		if (cr1 & STM32H7_SPI_CR1_CSTART) {
			FUNC9(cr1 | STM32H7_SPI_CR1_CSUSP,
				       spi->base + STM32H7_SPI_CR1);
			if (FUNC4(
						spi->base + STM32H7_SPI_SR,
						sr, !(sr & STM32H7_SPI_SR_SUSP),
						10, 100000) < 0)
				FUNC1(spi->dev,
					 "Suspend request timeout\n");
		}
	}

	if (!spi->cur_usedma && spi->rx_buf && (spi->rx_len > 0))
		FUNC8(spi, true);

	if (spi->cur_usedma && spi->dma_tx)
		FUNC2(spi->dma_tx);
	if (spi->cur_usedma && spi->dma_rx)
		FUNC2(spi->dma_rx);

	FUNC7(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_SPE);

	FUNC7(spi, STM32H7_SPI_CFG1, STM32H7_SPI_CFG1_TXDMAEN |
						STM32H7_SPI_CFG1_RXDMAEN);

	/* Disable interrupts and clear status flags */
	FUNC9(0, spi->base + STM32H7_SPI_IER);
	FUNC9(STM32H7_SPI_IFCR_ALL, spi->base + STM32H7_SPI_IFCR);

	FUNC6(&spi->lock, flags);
}