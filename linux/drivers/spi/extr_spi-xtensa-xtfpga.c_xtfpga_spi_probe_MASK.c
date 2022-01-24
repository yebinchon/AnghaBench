#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * txrx_word; int /*<<< orphan*/  chipselect; struct spi_master* master; } ;
struct xtfpga_spi {TYPE_2__ bitbang; int /*<<< orphan*/  regs; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {TYPE_1__ dev; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  flags; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  id; } ;
struct platform_device {TYPE_3__ dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  SPI_MASTER_NO_RX ; 
 size_t SPI_MODE_0 ; 
 int /*<<< orphan*/  XTFPGA_SPI_BUSY ; 
 int /*<<< orphan*/  XTFPGA_SPI_START ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct resource*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct spi_master*) ; 
 struct spi_master* FUNC7 (TYPE_3__*,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 struct xtfpga_spi* FUNC9 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  xtfpga_spi_chipselect ; 
 scalar_t__ FUNC12 (struct xtfpga_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xtfpga_spi_txrx_word ; 
 int /*<<< orphan*/  FUNC13 (struct xtfpga_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct xtfpga_spi *xspi;
	struct resource *mem;
	int ret;
	struct spi_master *master;

	master = FUNC7(&pdev->dev, sizeof(struct xtfpga_spi));
	if (!master)
		return -ENOMEM;

	master->flags = SPI_MASTER_NO_RX;
	master->bits_per_word_mask = FUNC2(1, 16);
	master->bus_num = pdev->dev.id;
	master->dev.of_node = pdev->dev.of_node;

	xspi = FUNC9(master);
	xspi->bitbang.master = master;
	xspi->bitbang.chipselect = xtfpga_spi_chipselect;
	xspi->bitbang.txrx_word[SPI_MODE_0] = xtfpga_spi_txrx_word;

	mem = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!mem) {
		FUNC3(&pdev->dev, "No memory resource\n");
		ret = -ENODEV;
		goto err;
	}
	xspi->regs = FUNC4(&pdev->dev, mem);
	if (FUNC0(xspi->regs)) {
		ret = FUNC1(xspi->regs);
		goto err;
	}

	FUNC13(xspi, XTFPGA_SPI_START, 0);
	FUNC11(1000, 2000);
	if (FUNC12(xspi, XTFPGA_SPI_BUSY)) {
		FUNC3(&pdev->dev, "Device stuck in busy state\n");
		ret = -EBUSY;
		goto err;
	}

	ret = FUNC8(&xspi->bitbang);
	if (ret < 0) {
		FUNC3(&pdev->dev, "spi_bitbang_start failed\n");
		goto err;
	}

	FUNC6(pdev, master);
	return 0;
err:
	FUNC10(master);
	return ret;
}