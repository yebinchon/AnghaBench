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
struct spi_master {int dummy; } ;
struct rockchip_spi {scalar_t__ regs; int /*<<< orphan*/  rx_left; scalar_t__ tx_left; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ ROCKCHIP_SPI_IMR ; 
 int /*<<< orphan*/  FUNC0 (struct rockchip_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct rockchip_spi*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_master*) ; 
 struct rockchip_spi* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct spi_master *master = dev_id;
	struct rockchip_spi *rs = FUNC4(master);

	if (rs->tx_left)
		FUNC1(rs);

	FUNC0(rs);
	if (!rs->rx_left) {
		FUNC2(rs, false);
		FUNC5(0, rs->regs + ROCKCHIP_SPI_IMR);
		FUNC3(master);
	}

	return IRQ_HANDLED;
}