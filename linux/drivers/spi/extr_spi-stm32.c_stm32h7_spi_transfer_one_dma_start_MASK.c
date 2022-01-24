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
struct stm32_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STM32H7_SPI_CR1 ; 
 int STM32H7_SPI_CR1_CSTART ; 
 int /*<<< orphan*/  STM32H7_SPI_IER ; 
 int STM32H7_SPI_IER_EOTIE ; 
 int STM32H7_SPI_IER_MODFIE ; 
 int STM32H7_SPI_IER_OVRIE ; 
 int STM32H7_SPI_IER_TXTFIE ; 
 int /*<<< orphan*/  FUNC0 (struct stm32_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct stm32_spi *spi)
{
	/* Enable the interrupts relative to the end of transfer */
	FUNC1(spi, STM32H7_SPI_IER, STM32H7_SPI_IER_EOTIE |
						 STM32H7_SPI_IER_TXTFIE |
						 STM32H7_SPI_IER_OVRIE |
						 STM32H7_SPI_IER_MODFIE);

	FUNC0(spi);

	FUNC1(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_CSTART);
}