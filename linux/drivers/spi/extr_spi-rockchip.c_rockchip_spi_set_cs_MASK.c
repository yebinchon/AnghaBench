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
struct spi_device {size_t chip_select; struct spi_master* master; } ;
struct rockchip_spi {int* cs_asserted; int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ROCKCHIP_SPI_SER ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct rockchip_spi* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static void FUNC6(struct spi_device *spi, bool enable)
{
	struct spi_master *master = spi->master;
	struct rockchip_spi *rs = FUNC5(master);
	bool cs_asserted = !enable;

	/* Return immediately for no-op */
	if (cs_asserted == rs->cs_asserted[spi->chip_select])
		return;

	if (cs_asserted) {
		/* Keep things powered as long as CS is asserted */
		FUNC3(rs->dev);

		FUNC2(rs->regs + ROCKCHIP_SPI_SER,
				      FUNC0(spi->chip_select));
	} else {
		FUNC1(rs->regs + ROCKCHIP_SPI_SER,
				      FUNC0(spi->chip_select));

		/* Drop reference from when we first asserted CS */
		FUNC4(rs->dev);
	}

	rs->cs_asserted[spi->chip_select] = cs_asserted;
}