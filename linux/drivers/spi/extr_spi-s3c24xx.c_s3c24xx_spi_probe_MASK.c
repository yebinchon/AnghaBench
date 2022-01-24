#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_master {int mode_bits; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  num_chipselect; } ;
struct TYPE_3__ {int /*<<< orphan*/  txrx_bufs; int /*<<< orphan*/  chipselect; int /*<<< orphan*/  setup_transfer; struct spi_master* master; } ;
struct s3c24xx_spi {scalar_t__ irq; struct spi_master* master; int /*<<< orphan*/  clk; TYPE_1__ bitbang; scalar_t__ set_cs; int /*<<< orphan*/  regs; int /*<<< orphan*/ * dev; struct s3c2410_spi_info* pdata; int /*<<< orphan*/  done; } ;
struct s3c2410_spi_info {scalar_t__ pin_cs; scalar_t__ set_cs; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  num_cs; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct s3c2410_spi_info* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s3c24xx_spi*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct s3c24xx_spi*) ; 
 int /*<<< orphan*/  s3c24xx_spi_chipsel ; 
 scalar_t__ s3c24xx_spi_gpiocs ; 
 int /*<<< orphan*/  FUNC16 (struct s3c24xx_spi*) ; 
 int /*<<< orphan*/  FUNC17 (struct s3c24xx_spi*) ; 
 int /*<<< orphan*/  s3c24xx_spi_irq ; 
 int /*<<< orphan*/  s3c24xx_spi_setup ; 
 int /*<<< orphan*/  s3c24xx_spi_setupxfer ; 
 int /*<<< orphan*/  s3c24xx_spi_txrx ; 
 struct spi_master* FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (TYPE_1__*) ; 
 struct s3c24xx_spi* FUNC20 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC21 (struct spi_master*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct s3c2410_spi_info *pdata;
	struct s3c24xx_spi *hw;
	struct spi_master *master;
	int err = 0;

	master = FUNC18(&pdev->dev, sizeof(struct s3c24xx_spi));
	if (master == NULL) {
		FUNC5(&pdev->dev, "No memory for spi_master\n");
		return -ENOMEM;
	}

	hw = FUNC20(master);

	hw->master = master;
	hw->pdata = pdata = FUNC6(&pdev->dev);
	hw->dev = &pdev->dev;

	if (pdata == NULL) {
		FUNC5(&pdev->dev, "No platform data supplied\n");
		err = -ENOENT;
		goto err_no_pdata;
	}

	FUNC15(pdev, hw);
	FUNC13(&hw->done);

	/* initialise fiq handler */

	FUNC16(hw);

	/* setup the master state. */

	/* the spi->mode bits understood by this driver: */
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;

	master->num_chipselect = hw->pdata->num_cs;
	master->bus_num = pdata->bus_num;
	master->bits_per_word_mask = FUNC2(8);

	/* setup the state for the bitbang driver */

	hw->bitbang.master         = hw->master;
	hw->bitbang.setup_transfer = s3c24xx_spi_setupxfer;
	hw->bitbang.chipselect     = s3c24xx_spi_chipsel;
	hw->bitbang.txrx_bufs      = s3c24xx_spi_txrx;

	hw->master->setup  = s3c24xx_spi_setup;

	FUNC4(hw->dev, "bitbang at %p\n", &hw->bitbang);

	/* find and map our resources */
	hw->regs = FUNC10(pdev, 0);
	if (FUNC0(hw->regs)) {
		err = FUNC1(hw->regs);
		goto err_no_pdata;
	}

	hw->irq = FUNC14(pdev, 0);
	if (hw->irq < 0) {
		err = -ENOENT;
		goto err_no_pdata;
	}

	err = FUNC11(&pdev->dev, hw->irq, s3c24xx_spi_irq, 0,
				pdev->name, hw);
	if (err) {
		FUNC5(&pdev->dev, "Cannot claim IRQ\n");
		goto err_no_pdata;
	}

	hw->clk = FUNC8(&pdev->dev, "spi");
	if (FUNC0(hw->clk)) {
		FUNC5(&pdev->dev, "No clock for device\n");
		err = FUNC1(hw->clk);
		goto err_no_pdata;
	}

	/* setup any gpio we can */

	if (!pdata->set_cs) {
		if (pdata->pin_cs < 0) {
			FUNC5(&pdev->dev, "No chipselect pin\n");
			err = -EINVAL;
			goto err_register;
		}

		err = FUNC9(&pdev->dev, pdata->pin_cs,
					FUNC7(&pdev->dev));
		if (err) {
			FUNC5(&pdev->dev, "Failed to get gpio for cs\n");
			goto err_register;
		}

		hw->set_cs = s3c24xx_spi_gpiocs;
		FUNC12(pdata->pin_cs, 1);
	} else
		hw->set_cs = pdata->set_cs;

	FUNC17(hw);

	/* register our spi controller */

	err = FUNC19(&hw->bitbang);
	if (err) {
		FUNC5(&pdev->dev, "Failed to register SPI master\n");
		goto err_register;
	}

	return 0;

 err_register:
	FUNC3(hw->clk);

 err_no_pdata:
	FUNC21(hw->master);
	return err;
}