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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; TYPE_1__ dev; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  transfer_one_message; int /*<<< orphan*/  prepare_transfer_hardware; int /*<<< orphan*/  setup; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;
struct mpc52xx_psc {int dummy; } ;
struct mpc512x_psc_spi {int type; unsigned int irq; struct clk* clk_mclk; struct clk* clk_ipg; int /*<<< orphan*/  mclk_rate; int /*<<< orphan*/  txisrdone; struct mpc512x_psc_fifo* fifo; void* psc; int /*<<< orphan*/  cs_control; } ;
struct mpc512x_psc_fifo {int dummy; } ;
struct fsl_spi_platform_data {int /*<<< orphan*/  max_chipselect; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  cs_control; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct fsl_spi_platform_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct spi_master*) ; 
 struct clk* FUNC8 (struct device*,char*) ; 
 void* FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mpc512x_psc_spi*) ; 
 int FUNC11 (struct device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpc512x_psc_spi_cleanup ; 
 int /*<<< orphan*/  mpc512x_psc_spi_isr ; 
 int /*<<< orphan*/  mpc512x_psc_spi_msg_xfer ; 
 int FUNC13 (struct spi_master*,struct mpc512x_psc_spi*) ; 
 int /*<<< orphan*/  mpc512x_psc_spi_prep_xfer_hw ; 
 int /*<<< orphan*/  mpc512x_psc_spi_setup ; 
 int /*<<< orphan*/  mpc512x_psc_spi_unprep_xfer_hw ; 
 int /*<<< orphan*/  mpc512x_spi_cs_control ; 
 scalar_t__ FUNC14 (struct device*) ; 
 struct spi_master* FUNC15 (struct device*,int) ; 
 struct mpc512x_psc_spi* FUNC16 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_master*) ; 

__attribute__((used)) static int FUNC18(struct device *dev, u32 regaddr,
					      u32 size, unsigned int irq)
{
	struct fsl_spi_platform_data *pdata = FUNC6(dev);
	struct mpc512x_psc_spi *mps;
	struct spi_master *master;
	int ret;
	void *tempp;
	struct clk *clk;

	master = FUNC15(dev, sizeof *mps);
	if (master == NULL)
		return -ENOMEM;

	FUNC7(dev, master);
	mps = FUNC16(master);
	mps->type = (int)FUNC14(dev);
	mps->irq = irq;

	if (pdata == NULL) {
		mps->cs_control = mpc512x_spi_cs_control;
	} else {
		mps->cs_control = pdata->cs_control;
		master->bus_num = pdata->bus_num;
		master->num_chipselect = pdata->max_chipselect;
	}

	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST;
	master->setup = mpc512x_psc_spi_setup;
	master->prepare_transfer_hardware = mpc512x_psc_spi_prep_xfer_hw;
	master->transfer_one_message = mpc512x_psc_spi_msg_xfer;
	master->unprepare_transfer_hardware = mpc512x_psc_spi_unprep_xfer_hw;
	master->cleanup = mpc512x_psc_spi_cleanup;
	master->dev.of_node = dev->of_node;

	tempp = FUNC9(dev, regaddr, size);
	if (!tempp) {
		FUNC5(dev, "could not ioremap I/O port range\n");
		ret = -EFAULT;
		goto free_master;
	}
	mps->psc = tempp;
	mps->fifo =
		(struct mpc512x_psc_fifo *)(tempp + sizeof(struct mpc52xx_psc));
	ret = FUNC10(dev, mps->irq, mpc512x_psc_spi_isr, IRQF_SHARED,
				"mpc512x-psc-spi", mps);
	if (ret)
		goto free_master;
	FUNC12(&mps->txisrdone);

	clk = FUNC8(dev, "mclk");
	if (FUNC0(clk)) {
		ret = FUNC1(clk);
		goto free_master;
	}
	ret = FUNC4(clk);
	if (ret)
		goto free_master;
	mps->clk_mclk = clk;
	mps->mclk_rate = FUNC3(clk);

	clk = FUNC8(dev, "ipg");
	if (FUNC0(clk)) {
		ret = FUNC1(clk);
		goto free_mclk_clock;
	}
	ret = FUNC4(clk);
	if (ret)
		goto free_mclk_clock;
	mps->clk_ipg = clk;

	ret = FUNC13(master, mps);
	if (ret < 0)
		goto free_ipg_clock;

	ret = FUNC11(dev, master);
	if (ret < 0)
		goto free_ipg_clock;

	return ret;

free_ipg_clock:
	FUNC2(mps->clk_ipg);
free_mclk_clock:
	FUNC2(mps->clk_mclk);
free_master:
	FUNC17(master);

	return ret;
}