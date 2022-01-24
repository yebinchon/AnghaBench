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
 int FUNC0 (int,int) ; 
 scalar_t__ STM32H7_SPI_CFG1 ; 
 int STM32H7_SPI_CFG1_DSIZE ; 
 int STM32H7_SPI_CFG1_DSIZE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_spi*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct stm32_spi *spi)
{
	unsigned long flags;
	u32 cfg1, max_bpw;

	FUNC3(&spi->lock, flags);

	/*
	 * The most significant bit at DSIZE bit field is reserved when the
	 * maximum data size of periperal instances is limited to 16-bit
	 */
	FUNC5(spi, STM32H7_SPI_CFG1, STM32H7_SPI_CFG1_DSIZE);

	cfg1 = FUNC2(spi->base + STM32H7_SPI_CFG1);
	max_bpw = (cfg1 & STM32H7_SPI_CFG1_DSIZE) >>
		  STM32H7_SPI_CFG1_DSIZE_SHIFT;
	max_bpw += 1;

	FUNC4(&spi->lock, flags);

	FUNC1(spi->dev, "%d-bit maximum data frame\n", max_bpw);

	return FUNC0(4, max_bpw);
}