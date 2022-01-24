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
struct spi_master {int auto_runtime_pm; int num_chipselect; int mode_bits; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; int /*<<< orphan*/ * mem_ops; TYPE_1__ dev; } ;
struct resource {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mxic_spi {void* regs; void* send_dly_clk; void* send_clk; void* ps_clk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 void* FUNC4 (TYPE_2__*,char*) ; 
 void* FUNC5 (TYPE_2__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct mxic_spi*) ; 
 int /*<<< orphan*/  mxic_spi_mem_ops ; 
 int /*<<< orphan*/  mxic_spi_set_cs ; 
 int /*<<< orphan*/  mxic_spi_transfer_one ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 struct spi_master* FUNC11 (TYPE_2__*,int) ; 
 struct mxic_spi* FUNC12 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_master*) ; 
 int FUNC14 (struct spi_master*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct spi_master *master;
	struct resource *res;
	struct mxic_spi *mxic;
	int ret;

	master = FUNC11(&pdev->dev, sizeof(struct mxic_spi));
	if (!master)
		return -ENOMEM;

	FUNC8(pdev, master);

	mxic = FUNC12(master);

	master->dev.of_node = pdev->dev.of_node;

	mxic->ps_clk = FUNC4(&pdev->dev, "ps_clk");
	if (FUNC0(mxic->ps_clk))
		return FUNC1(mxic->ps_clk);

	mxic->send_clk = FUNC4(&pdev->dev, "send_clk");
	if (FUNC0(mxic->send_clk))
		return FUNC1(mxic->send_clk);

	mxic->send_dly_clk = FUNC4(&pdev->dev, "send_dly_clk");
	if (FUNC0(mxic->send_dly_clk))
		return FUNC1(mxic->send_dly_clk);

	res = FUNC7(pdev, IORESOURCE_MEM, "regs");
	mxic->regs = FUNC5(&pdev->dev, res);
	if (FUNC0(mxic->regs))
		return FUNC1(mxic->regs);

	FUNC10(&pdev->dev);
	master->auto_runtime_pm = true;

	master->num_chipselect = 1;
	master->mem_ops = &mxic_spi_mem_ops;

	master->set_cs = mxic_spi_set_cs;
	master->transfer_one = mxic_spi_transfer_one;
	master->bits_per_word_mask = FUNC2(8);
	master->mode_bits = SPI_CPOL | SPI_CPHA |
			SPI_RX_DUAL | SPI_TX_DUAL |
			SPI_RX_QUAD | SPI_TX_QUAD;

	FUNC6(mxic);

	ret = FUNC14(master);
	if (ret) {
		FUNC3(&pdev->dev, "spi_register_master failed\n");
		goto err_put_master;
	}

	return 0;

err_put_master:
	FUNC13(master);
	FUNC9(&pdev->dev);

	return ret;
}