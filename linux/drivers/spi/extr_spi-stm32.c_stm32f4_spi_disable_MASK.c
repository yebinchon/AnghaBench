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
struct stm32_spi {int /*<<< orphan*/  lock; scalar_t__ base; scalar_t__ dma_rx; scalar_t__ cur_usedma; scalar_t__ dma_tx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ STM32F4_SPI_CR1 ; 
 int STM32F4_SPI_CR1_SPE ; 
 scalar_t__ STM32F4_SPI_CR2 ; 
 int STM32F4_SPI_CR2_ERRIE ; 
 int STM32F4_SPI_CR2_RXDMAEN ; 
 int STM32F4_SPI_CR2_RXNEIE ; 
 int STM32F4_SPI_CR2_TXDMAEN ; 
 int STM32F4_SPI_CR2_TXEIE ; 
 scalar_t__ STM32F4_SPI_DR ; 
 scalar_t__ STM32F4_SPI_SR ; 
 int STM32F4_SPI_SR_BSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_spi*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC8(struct stm32_spi *spi)
{
	unsigned long flags;
	u32 sr;

	FUNC0(spi->dev, "disable controller\n");

	FUNC5(&spi->lock, flags);

	if (!(FUNC3(spi->base + STM32F4_SPI_CR1) &
	      STM32F4_SPI_CR1_SPE)) {
		FUNC6(&spi->lock, flags);
		return;
	}

	/* Disable interrupts */
	FUNC7(spi, STM32F4_SPI_CR2, STM32F4_SPI_CR2_TXEIE |
						 STM32F4_SPI_CR2_RXNEIE |
						 STM32F4_SPI_CR2_ERRIE);

	/* Wait until BSY = 0 */
	if (FUNC4(spi->base + STM32F4_SPI_SR,
					      sr, !(sr & STM32F4_SPI_SR_BSY),
					      10, 100000) < 0) {
		FUNC1(spi->dev, "disabling condition timeout\n");
	}

	if (spi->cur_usedma && spi->dma_tx)
		FUNC2(spi->dma_tx);
	if (spi->cur_usedma && spi->dma_rx)
		FUNC2(spi->dma_rx);

	FUNC7(spi, STM32F4_SPI_CR1, STM32F4_SPI_CR1_SPE);

	FUNC7(spi, STM32F4_SPI_CR2, STM32F4_SPI_CR2_TXDMAEN |
						 STM32F4_SPI_CR2_RXDMAEN);

	/* Sequence to clear OVR flag */
	FUNC3(spi->base + STM32F4_SPI_DR);
	FUNC3(spi->base + STM32F4_SPI_SR);

	FUNC6(&spi->lock, flags);
}