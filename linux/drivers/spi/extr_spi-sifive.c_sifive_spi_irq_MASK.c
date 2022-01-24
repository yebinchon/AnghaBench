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
struct sifive_spi {int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SIFIVE_SPI_IP_RXWM ; 
 int SIFIVE_SPI_IP_TXWM ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_IE ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_IP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sifive_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sifive_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct sifive_spi *spi = dev_id;
	u32 ip = FUNC1(spi, SIFIVE_SPI_REG_IP);

	if (ip & (SIFIVE_SPI_IP_TXWM | SIFIVE_SPI_IP_RXWM)) {
		/* Disable interrupts until next transfer */
		FUNC2(spi, SIFIVE_SPI_REG_IE, 0);
		FUNC0(&spi->done);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}