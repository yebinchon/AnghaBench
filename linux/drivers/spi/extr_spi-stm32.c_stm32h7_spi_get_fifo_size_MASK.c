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
struct stm32_spi {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  STM32H7_SPI_CR1 ; 
 int /*<<< orphan*/  STM32H7_SPI_CR1_SPE ; 
 scalar_t__ STM32H7_SPI_SR ; 
 int STM32H7_SPI_SR_TXP ; 
 scalar_t__ STM32H7_SPI_TXDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct stm32_spi *spi)
{
	unsigned long flags;
	u32 count = 0;

	FUNC2(&spi->lock, flags);

	FUNC5(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_SPE);

	while (FUNC1(spi->base + STM32H7_SPI_SR) & STM32H7_SPI_SR_TXP)
		FUNC6(++count, spi->base + STM32H7_SPI_TXDR);

	FUNC4(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_SPE);

	FUNC3(&spi->lock, flags);

	FUNC0(spi->dev, "%d x 8-bit fifo size\n", count);

	return count;
}