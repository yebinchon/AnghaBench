#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; TYPE_1__ dev; int /*<<< orphan*/  unprepare_message; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  handle_err; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct bcm2835aux_spi {int irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_NO_CS ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835aux_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm2835aux_spi_handle_err ; 
 int /*<<< orphan*/  bcm2835aux_spi_interrupt ; 
 int /*<<< orphan*/  bcm2835aux_spi_prepare_message ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835aux_spi*) ; 
 int /*<<< orphan*/  bcm2835aux_spi_setup ; 
 int /*<<< orphan*/  bcm2835aux_spi_transfer_one ; 
 int /*<<< orphan*/  bcm2835aux_spi_unprepare_message ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_master*) ; 
 int FUNC13 (TYPE_2__*,struct spi_master*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct spi_master*) ; 
 struct spi_master* FUNC16 (TYPE_2__*,int) ; 
 struct bcm2835aux_spi* FUNC17 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_master*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct spi_master *master;
	struct bcm2835aux_spi *bs;
	unsigned long clk_hz;
	int err;

	master = FUNC16(&pdev->dev, sizeof(*bs));
	if (!master)
		return -ENOMEM;

	FUNC15(pdev, master);
	master->mode_bits = (SPI_CPOL | SPI_CS_HIGH | SPI_NO_CS);
	master->bits_per_word_mask = FUNC2(8);
	/* even though the driver never officially supported native CS
	 * allow a single native CS for legacy DT support purposes when
	 * no cs-gpio is configured.
	 * Known limitations for native cs are:
	 * * multiple chip-selects: cs0-cs2 are all simultaniously asserted
	 *     whenever there is a transfer -  this even includes SPI_NO_CS
	 * * SPI_CS_HIGH: is ignores - cs are always asserted low
	 * * cs_change: cs is deasserted after each spi_transfer
	 * * cs_delay_usec: cs is always deasserted one SCK cycle after
	 *     a spi_transfer
	 */
	master->num_chipselect = 1;
	master->setup = bcm2835aux_spi_setup;
	master->transfer_one = bcm2835aux_spi_transfer_one;
	master->handle_err = bcm2835aux_spi_handle_err;
	master->prepare_message = bcm2835aux_spi_prepare_message;
	master->unprepare_message = bcm2835aux_spi_unprepare_message;
	master->dev.of_node = pdev->dev.of_node;

	bs = FUNC17(master);

	/* the main area */
	bs->regs = FUNC11(pdev, 0);
	if (FUNC0(bs->regs)) {
		err = FUNC1(bs->regs);
		goto out_master_put;
	}

	bs->clk = FUNC10(&pdev->dev, NULL);
	if (FUNC0(bs->clk)) {
		err = FUNC1(bs->clk);
		FUNC8(&pdev->dev, "could not get clk: %d\n", err);
		goto out_master_put;
	}

	bs->irq = FUNC14(pdev, 0);
	if (bs->irq <= 0) {
		err = bs->irq ? bs->irq : -ENODEV;
		goto out_master_put;
	}

	/* this also enables the HW block */
	err = FUNC7(bs->clk);
	if (err) {
		FUNC8(&pdev->dev, "could not prepare clock: %d\n", err);
		goto out_master_put;
	}

	/* just checking if the clock returns a sane value */
	clk_hz = FUNC6(bs->clk);
	if (!clk_hz) {
		FUNC8(&pdev->dev, "clock returns 0 Hz\n");
		err = -ENODEV;
		goto out_clk_disable;
	}

	/* reset SPI-HW block */
	FUNC4(bs);

	err = FUNC12(&pdev->dev, bs->irq,
			       bcm2835aux_spi_interrupt,
			       IRQF_SHARED,
			       FUNC9(&pdev->dev), master);
	if (err) {
		FUNC8(&pdev->dev, "could not request IRQ: %d\n", err);
		goto out_clk_disable;
	}

	err = FUNC13(&pdev->dev, master);
	if (err) {
		FUNC8(&pdev->dev, "could not register SPI master: %d\n", err);
		goto out_clk_disable;
	}

	FUNC3(bs, FUNC9(&pdev->dev));

	return 0;

out_clk_disable:
	FUNC5(bs->clk);
out_master_put:
	FUNC18(master);
	return err;
}