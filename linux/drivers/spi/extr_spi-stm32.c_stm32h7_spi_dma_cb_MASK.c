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
 scalar_t__ STM32H7_SPI_SR ; 
 int STM32H7_SPI_SR_EOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct stm32_spi *spi = data;
	unsigned long flags;
	u32 sr;

	FUNC2(&spi->lock, flags);

	sr = FUNC1(spi->base + STM32H7_SPI_SR);

	FUNC3(&spi->lock, flags);

	if (!(sr & STM32H7_SPI_SR_EOT))
		FUNC0(spi->dev, "DMA error (sr=0x%08x)\n", sr);

	/* Now wait for EOT, or SUSP or OVR in case of error */
}