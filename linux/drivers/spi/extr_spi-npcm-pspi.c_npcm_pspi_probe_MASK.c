#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct device_node* of_node; } ;
struct spi_master {int mode_bits; int bits_per_word_mask; int num_chipselect; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  prepare_transfer_hardware; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  bus_num; TYPE_1__ dev; void* min_speed_hz; void* max_speed_hz; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_2__ dev; } ;
struct npcm_pspi {int is_save_param; int /*<<< orphan*/  clk; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  rst_regmap; int /*<<< orphan*/  base; int /*<<< orphan*/  id; struct spi_master* master; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPCM_PSPI_DEFAULT_CLK ; 
 int /*<<< orphan*/  NPCM_PSPI_MAX_CLK_DIVIDER ; 
 int /*<<< orphan*/  NPCM_PSPI_MIN_CLK_DIVIDER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct npcm_pspi*) ; 
 int FUNC13 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  npcm_pspi_handler ; 
 int /*<<< orphan*/  npcm_pspi_prepare_transfer_hardware ; 
 int /*<<< orphan*/  FUNC15 (struct npcm_pspi*) ; 
 int /*<<< orphan*/  FUNC16 (struct npcm_pspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  npcm_pspi_transfer_one ; 
 int /*<<< orphan*/  npcm_pspi_unprepare_transfer_hardware ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*,char*) ; 
 int FUNC18 (struct device_node*,char*,int) ; 
 int FUNC19 (struct device_node*,char*) ; 
 int FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC23 (TYPE_2__*,int) ; 
 struct npcm_pspi* FUNC24 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC25 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct npcm_pspi *priv;
	struct spi_master *master;
	unsigned long clk_hz;
	struct device_node *np = pdev->dev.of_node;
	int num_cs, i;
	int csgpio;
	int irq;
	int ret;

	num_cs = FUNC19(np, "cs-gpios");
	if (num_cs < 0)
		return num_cs;

	pdev->id = FUNC17(np, "spi");
	if (pdev->id < 0)
		pdev->id = 0;

	master = FUNC23(&pdev->dev, sizeof(*priv));
	if (!master)
		return -ENOMEM;

	FUNC21(pdev, master);

	priv = FUNC24(master);
	priv->master = master;
	priv->is_save_param = false;
	priv->id = pdev->id;

	priv->base = FUNC11(pdev, 0);
	if (FUNC1(priv->base)) {
		ret = FUNC2(priv->base);
		goto out_master_put;
	}

	priv->clk = FUNC9(&pdev->dev, NULL);
	if (FUNC1(priv->clk)) {
		FUNC8(&pdev->dev, "failed to get clock\n");
		ret = FUNC2(priv->clk);
		goto out_master_put;
	}

	ret = FUNC6(priv->clk);
	if (ret)
		goto out_master_put;

	irq = FUNC20(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto out_disable_clk;
	}

	priv->rst_regmap =
		FUNC26("nuvoton,npcm750-rst");
	if (FUNC1(priv->rst_regmap)) {
		FUNC8(&pdev->dev, "failed to find nuvoton,npcm750-rst\n");
		return FUNC2(priv->rst_regmap);
	}

	/* reset SPI-HW block */
	FUNC15(priv);

	ret = FUNC12(&pdev->dev, irq, npcm_pspi_handler, 0,
			       "npcm-pspi", priv);
	if (ret) {
		FUNC8(&pdev->dev, "failed to request IRQ\n");
		goto out_disable_clk;
	}

	FUNC14(&priv->xfer_done);

	clk_hz = FUNC5(priv->clk);

	master->max_speed_hz = FUNC0(clk_hz, NPCM_PSPI_MIN_CLK_DIVIDER);
	master->min_speed_hz = FUNC0(clk_hz, NPCM_PSPI_MAX_CLK_DIVIDER);
	master->mode_bits = SPI_CPHA | SPI_CPOL;
	master->dev.of_node = pdev->dev.of_node;
	master->bus_num = pdev->id;
	master->bits_per_word_mask = FUNC3(8) | FUNC3(16);
	master->transfer_one = npcm_pspi_transfer_one;
	master->prepare_transfer_hardware =
		npcm_pspi_prepare_transfer_hardware;
	master->unprepare_transfer_hardware =
		npcm_pspi_unprepare_transfer_hardware;
	master->num_chipselect = num_cs;

	for (i = 0; i < num_cs; i++) {
		csgpio = FUNC18(np, "cs-gpios", i);
		if (csgpio < 0) {
			FUNC8(&pdev->dev, "failed to get csgpio#%u\n", i);
			goto out_disable_clk;
		}
		FUNC7(&pdev->dev, "csgpio#%u = %d\n", i, csgpio);
		ret = FUNC10(&pdev->dev, csgpio,
					    GPIOF_OUT_INIT_HIGH, DRIVER_NAME);
		if (ret < 0) {
			FUNC8(&pdev->dev,
				"failed to configure csgpio#%u %d\n"
				, i, csgpio);
			goto out_disable_clk;
		}
	}

	/* set to default clock rate */
	FUNC16(priv, NPCM_PSPI_DEFAULT_CLK);

	ret = FUNC13(&pdev->dev, master);
	if (ret)
		goto out_disable_clk;

	FUNC22("NPCM Peripheral SPI %d probed\n", pdev->id);

	return 0;

out_disable_clk:
	FUNC4(priv->clk);

out_master_put:
	FUNC25(master);
	return ret;
}