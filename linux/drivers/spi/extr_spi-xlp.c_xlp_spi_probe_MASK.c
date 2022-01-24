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
struct xlp_spi_priv {int /*<<< orphan*/  done; int /*<<< orphan*/  spi_clk; struct clk* base; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; TYPE_1__ dev; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  setup; int /*<<< orphan*/  num_chipselect; scalar_t__ bus_num; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  XLP_SPI_MAX_CS ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 struct clk* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct xlp_spi_priv* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct clk* FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xlp_spi_priv*) ; 
 int FUNC8 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_master*,struct xlp_spi_priv*) ; 
 int /*<<< orphan*/  xlp_spi_interrupt ; 
 int /*<<< orphan*/  xlp_spi_setup ; 
 int /*<<< orphan*/  FUNC14 (struct xlp_spi_priv*) ; 
 int /*<<< orphan*/  xlp_spi_transfer_one ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct spi_master *master;
	struct xlp_spi_priv *xspi;
	struct clk *clk;
	int irq, err;

	xspi = FUNC5(&pdev->dev, sizeof(*xspi), GFP_KERNEL);
	if (!xspi)
		return -ENOMEM;

	xspi->base = FUNC6(pdev, 0);
	if (FUNC0(xspi->base))
		return FUNC1(xspi->base);

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;
	err = FUNC7(&pdev->dev, irq, xlp_spi_interrupt, 0,
			pdev->name, xspi);
	if (err) {
		FUNC3(&pdev->dev, "unable to request irq %d\n", irq);
		return err;
	}

	clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(clk)) {
		FUNC3(&pdev->dev, "could not get spi clock\n");
		return FUNC1(clk);
	}

	xspi->spi_clk = FUNC2(clk);

	master = FUNC11(&pdev->dev, 0);
	if (!master) {
		FUNC3(&pdev->dev, "could not alloc master\n");
		return -ENOMEM;
	}

	master->bus_num = 0;
	master->num_chipselect = XLP_SPI_MAX_CS;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;
	master->setup = xlp_spi_setup;
	master->transfer_one = xlp_spi_transfer_one;
	master->dev.of_node = pdev->dev.of_node;

	FUNC9(&xspi->done);
	FUNC13(master, xspi);
	FUNC14(xspi);

	/* register spi controller */
	err = FUNC8(&pdev->dev, master);
	if (err) {
		FUNC3(&pdev->dev, "spi register master failed!\n");
		FUNC12(master);
		return err;
	}

	return 0;
}