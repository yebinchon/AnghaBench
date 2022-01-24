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
typedef  int /*<<< orphan*/  u32 ;
struct spi_device {int mode; scalar_t__ controller_state; int /*<<< orphan*/  master; } ;
struct omap2_mcspi {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP2_MCSPI_CHCONF_FORCE ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct omap2_mcspi* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct spi_device *spi, bool enable)
{
	struct omap2_mcspi *mcspi = FUNC7(spi->master);
	u32 l;

	/* The controller handles the inverted chip selects
	 * using the OMAP2_MCSPI_CHCONF_EPOL bit so revert
	 * the inversion from the core spi_set_cs function.
	 */
	if (spi->mode & SPI_CS_HIGH)
		enable = !enable;

	if (spi->controller_state) {
		int err = FUNC3(mcspi->dev);
		if (err < 0) {
			FUNC6(mcspi->dev);
			FUNC0(mcspi->dev, "failed to get sync: %d\n", err);
			return;
		}

		l = FUNC1(spi);

		if (enable)
			l &= ~OMAP2_MCSPI_CHCONF_FORCE;
		else
			l |= OMAP2_MCSPI_CHCONF_FORCE;

		FUNC2(spi, l);

		FUNC4(mcspi->dev);
		FUNC5(mcspi->dev);
	}
}