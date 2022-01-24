#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct spi_device {int chip_select; int /*<<< orphan*/  master; } ;
struct jcore_spi {unsigned int cs_reg; TYPE_2__* master; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct jcore_spi*) ; 
 struct jcore_spi* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, bool value)
{
	struct jcore_spi *hw = FUNC2(spi->master);
	u32 csbit = 1U << (2 * spi->chip_select);

	FUNC0(hw->master->dev.parent, "chipselect %d\n", spi->chip_select);

	if (value)
		hw->cs_reg |= csbit;
	else
		hw->cs_reg &= ~csbit;

	FUNC1(hw);
}