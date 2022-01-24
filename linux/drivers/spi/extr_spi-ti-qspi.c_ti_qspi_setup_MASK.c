#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ti_qspi_regs {int clkctrl; } ;
struct ti_qspi {int spi_max_frequency; int /*<<< orphan*/  dev; int /*<<< orphan*/  fclk; struct ti_qspi_regs ctx_reg; } ;
struct spi_device {TYPE_1__* master; } ;
struct TYPE_2__ {scalar_t__ busy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int QSPI_CLK_DIV_MAX ; 
 int QSPI_CLK_EN ; 
 int /*<<< orphan*/  QSPI_SPI_CLOCK_CNTRL_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct ti_qspi* FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct ti_qspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_qspi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct ti_qspi	*qspi = FUNC7(spi->master);
	struct ti_qspi_regs *ctx_reg = &qspi->ctx_reg;
	int clk_div = 0, ret;
	u32 clk_ctrl_reg, clk_rate, clk_mask;

	if (spi->master->busy) {
		FUNC2(qspi->dev, "master busy doing other transfers\n");
		return -EBUSY;
	}

	if (!qspi->spi_max_frequency) {
		FUNC3(qspi->dev, "spi max frequency not defined\n");
		return -EINVAL;
	}

	clk_rate = FUNC1(qspi->fclk);

	clk_div = FUNC0(clk_rate, qspi->spi_max_frequency) - 1;

	if (clk_div < 0) {
		FUNC2(qspi->dev, "clock divider < 0, using /1 divider\n");
		return -EINVAL;
	}

	if (clk_div > QSPI_CLK_DIV_MAX) {
		FUNC2(qspi->dev, "clock divider >%d , using /%d divider\n",
				QSPI_CLK_DIV_MAX, QSPI_CLK_DIV_MAX + 1);
		return -EINVAL;
	}

	FUNC2(qspi->dev, "hz: %d, clock divider %d\n",
			qspi->spi_max_frequency, clk_div);

	ret = FUNC4(qspi->dev);
	if (ret < 0) {
		FUNC3(qspi->dev, "pm_runtime_get_sync() failed\n");
		return ret;
	}

	clk_ctrl_reg = FUNC8(qspi, QSPI_SPI_CLOCK_CNTRL_REG);

	clk_ctrl_reg &= ~QSPI_CLK_EN;

	/* disable SCLK */
	FUNC9(qspi, clk_ctrl_reg, QSPI_SPI_CLOCK_CNTRL_REG);

	/* enable SCLK */
	clk_mask = QSPI_CLK_EN | clk_div;
	FUNC9(qspi, clk_mask, QSPI_SPI_CLOCK_CNTRL_REG);
	ctx_reg->clkctrl = clk_mask;

	FUNC5(qspi->dev);
	ret = FUNC6(qspi->dev);
	if (ret < 0) {
		FUNC3(qspi->dev, "pm_runtime_put_autosuspend() failed\n");
		return ret;
	}

	return 0;
}