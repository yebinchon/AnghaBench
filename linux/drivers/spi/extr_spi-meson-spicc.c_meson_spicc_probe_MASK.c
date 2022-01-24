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
struct spi_master {int num_chipselect; int mode_bits; int bits_per_word_mask; int flags; int min_speed_hz; int max_speed_hz; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct meson_spicc_device {scalar_t__ core; scalar_t__ base; struct platform_device* pdev; struct spi_master* master; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ SPICC_INTREG ; 
 int SPICC_MAX_FREQ ; 
 int FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_MASTER_MUST_RX ; 
 int SPI_MASTER_MUST_TX ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct meson_spicc_device*) ; 
 int FUNC11 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  meson_spicc_cleanup ; 
 int /*<<< orphan*/  meson_spicc_irq ; 
 int /*<<< orphan*/  meson_spicc_prepare_message ; 
 int /*<<< orphan*/  meson_spicc_setup ; 
 int /*<<< orphan*/  meson_spicc_transfer_one ; 
 int /*<<< orphan*/  meson_spicc_unprepare_transfer ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct meson_spicc_device*) ; 
 struct spi_master* FUNC14 (TYPE_2__*,int) ; 
 struct meson_spicc_device* FUNC15 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct spi_master *master;
	struct meson_spicc_device *spicc;
	int ret, irq, rate;

	master = FUNC14(&pdev->dev, sizeof(*spicc));
	if (!master) {
		FUNC6(&pdev->dev, "master allocation failed\n");
		return -ENOMEM;
	}
	spicc = FUNC15(master);
	spicc->master = master;

	spicc->pdev = pdev;
	FUNC13(pdev, spicc);

	spicc->base = FUNC9(pdev, 0);
	if (FUNC0(spicc->base)) {
		FUNC6(&pdev->dev, "io resource mapping failed\n");
		ret = FUNC1(spicc->base);
		goto out_master;
	}

	/* Disable all IRQs */
	FUNC17(0, spicc->base + SPICC_INTREG);

	irq = FUNC12(pdev, 0);
	ret = FUNC10(&pdev->dev, irq, meson_spicc_irq,
			       0, NULL, spicc);
	if (ret) {
		FUNC6(&pdev->dev, "irq request failed\n");
		goto out_master;
	}

	spicc->core = FUNC8(&pdev->dev, "core");
	if (FUNC0(spicc->core)) {
		FUNC6(&pdev->dev, "core clock request failed\n");
		ret = FUNC1(spicc->core);
		goto out_master;
	}

	ret = FUNC5(spicc->core);
	if (ret) {
		FUNC6(&pdev->dev, "core clock enable failed\n");
		goto out_master;
	}
	rate = FUNC4(spicc->core);

	FUNC7(&pdev->dev);

	master->num_chipselect = 4;
	master->dev.of_node = pdev->dev.of_node;
	master->mode_bits = SPI_CPHA | SPI_CPOL | SPI_CS_HIGH;
	master->bits_per_word_mask = FUNC2(32) |
				     FUNC2(24) |
				     FUNC2(16) |
				     FUNC2(8);
	master->flags = (SPI_MASTER_MUST_RX | SPI_MASTER_MUST_TX);
	master->min_speed_hz = rate >> 9;
	master->setup = meson_spicc_setup;
	master->cleanup = meson_spicc_cleanup;
	master->prepare_message = meson_spicc_prepare_message;
	master->unprepare_transfer_hardware = meson_spicc_unprepare_transfer;
	master->transfer_one = meson_spicc_transfer_one;

	/* Setup max rate according to the Meson GX datasheet */
	if ((rate >> 2) > SPICC_MAX_FREQ)
		master->max_speed_hz = SPICC_MAX_FREQ;
	else
		master->max_speed_hz = rate >> 2;

	ret = FUNC11(&pdev->dev, master);
	if (ret) {
		FUNC6(&pdev->dev, "spi master registration failed\n");
		goto out_clk;
	}

	return 0;

out_clk:
	FUNC3(spicc->core);

out_master:
	FUNC16(master);

	return ret;
}