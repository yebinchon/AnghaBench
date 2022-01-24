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
struct omap2_mcspi_regs {int /*<<< orphan*/  wakeupenable; } ;
struct omap2_mcspi {int /*<<< orphan*/  dev; struct omap2_mcspi_regs ctx; struct spi_master* master; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP2_MCSPI_WAKEUPENABLE ; 
 int /*<<< orphan*/  OMAP2_MCSPI_WAKEUPENABLE_WKEN ; 
 int /*<<< orphan*/  FUNC0 (struct spi_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct omap2_mcspi *mcspi)
{
	struct spi_master	*master = mcspi->master;
	struct omap2_mcspi_regs	*ctx = &mcspi->ctx;
	int			ret = 0;

	ret = FUNC2(mcspi->dev);
	if (ret < 0) {
		FUNC5(mcspi->dev);

		return ret;
	}

	FUNC0(master, OMAP2_MCSPI_WAKEUPENABLE,
			OMAP2_MCSPI_WAKEUPENABLE_WKEN);
	ctx->wakeupenable = OMAP2_MCSPI_WAKEUPENABLE_WKEN;

	FUNC1(master);
	FUNC3(mcspi->dev);
	FUNC4(mcspi->dev);
	return 0;
}