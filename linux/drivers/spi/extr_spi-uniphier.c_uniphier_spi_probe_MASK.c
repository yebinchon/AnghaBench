#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct uniphier_spi_priv {int is_save_param; int /*<<< orphan*/  clk; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  base; struct spi_master* master; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  prepare_transfer_hardware; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  bus_num; TYPE_1__ dev; void* min_speed_hz; void* max_speed_hz; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 void* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  SSI_MAX_CLK_DIVIDER ; 
 int /*<<< orphan*/  SSI_MIN_CLK_DIVIDER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uniphier_spi_priv*) ; 
 int FUNC11 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct spi_master*) ; 
 struct spi_master* FUNC15 (TYPE_2__*,int) ; 
 struct uniphier_spi_priv* FUNC16 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_master*) ; 
 int /*<<< orphan*/  uniphier_spi_handler ; 
 int /*<<< orphan*/  uniphier_spi_prepare_transfer_hardware ; 
 int /*<<< orphan*/  uniphier_spi_set_cs ; 
 int /*<<< orphan*/  uniphier_spi_transfer_one ; 
 int /*<<< orphan*/  uniphier_spi_unprepare_transfer_hardware ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct uniphier_spi_priv *priv;
	struct spi_master *master;
	unsigned long clk_rate;
	int irq;
	int ret;

	master = FUNC15(&pdev->dev, sizeof(*priv));
	if (!master)
		return -ENOMEM;

	FUNC14(pdev, master);

	priv = FUNC16(master);
	priv->master = master;
	priv->is_save_param = false;

	priv->base = FUNC9(pdev, 0);
	if (FUNC1(priv->base)) {
		ret = FUNC2(priv->base);
		goto out_master_put;
	}

	priv->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC1(priv->clk)) {
		FUNC7(&pdev->dev, "failed to get clock\n");
		ret = FUNC2(priv->clk);
		goto out_master_put;
	}

	ret = FUNC6(priv->clk);
	if (ret)
		goto out_master_put;

	irq = FUNC13(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto out_disable_clk;
	}

	ret = FUNC10(&pdev->dev, irq, uniphier_spi_handler,
			       0, "uniphier-spi", priv);
	if (ret) {
		FUNC7(&pdev->dev, "failed to request IRQ\n");
		goto out_disable_clk;
	}

	FUNC12(&priv->xfer_done);

	clk_rate = FUNC5(priv->clk);

	master->max_speed_hz = FUNC0(clk_rate, SSI_MIN_CLK_DIVIDER);
	master->min_speed_hz = FUNC0(clk_rate, SSI_MAX_CLK_DIVIDER);
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST;
	master->dev.of_node = pdev->dev.of_node;
	master->bus_num = pdev->id;
	master->bits_per_word_mask = FUNC3(1, 32);

	master->set_cs = uniphier_spi_set_cs;
	master->transfer_one = uniphier_spi_transfer_one;
	master->prepare_transfer_hardware
				= uniphier_spi_prepare_transfer_hardware;
	master->unprepare_transfer_hardware
				= uniphier_spi_unprepare_transfer_hardware;
	master->num_chipselect = 1;

	ret = FUNC11(&pdev->dev, master);
	if (ret)
		goto out_disable_clk;

	return 0;

out_disable_clk:
	FUNC4(priv->clk);

out_master_put:
	FUNC17(master);
	return ret;
}