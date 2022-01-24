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
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_controller {int mode_bits; int bus_num; TYPE_1__ dev; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/  num_chipselect; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct nxp_fspi {int /*<<< orphan*/  lock; void* clk; void* clk_en; int /*<<< orphan*/  memmap_phy_size; int /*<<< orphan*/  memmap_phy; void* ahb_addr; void* iobase; int /*<<< orphan*/  devtype_data; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  NXP_FSPI_MAX_CHIPSELECT ; 
 int FUNC1 (void*) ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_OCTAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_OCTAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nxp_fspi*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nxp_fspi*) ; 
 int FUNC9 (struct nxp_fspi*) ; 
 int /*<<< orphan*/  FUNC10 (struct nxp_fspi*) ; 
 int /*<<< orphan*/  nxp_fspi_irq_handler ; 
 int /*<<< orphan*/  nxp_fspi_mem_ops ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct nxp_fspi*) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 struct spi_controller* FUNC16 (struct device*,int) ; 
 struct nxp_fspi* FUNC17 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_controller*) ; 
 int FUNC19 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct spi_controller *ctlr;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct resource *res;
	struct nxp_fspi *f;
	int ret;

	ctlr = FUNC16(&pdev->dev, sizeof(*f));
	if (!ctlr)
		return -ENOMEM;

	ctlr->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD | SPI_RX_OCTAL |
			  SPI_TX_DUAL | SPI_TX_QUAD | SPI_TX_OCTAL;

	f = FUNC17(ctlr);
	f->dev = dev;
	f->devtype_data = FUNC11(dev);
	if (!f->devtype_data) {
		ret = -ENODEV;
		goto err_put_ctrl;
	}

	FUNC14(pdev, f);

	/* find the resources - configuration register address space */
	res = FUNC13(pdev, IORESOURCE_MEM, "fspi_base");
	f->iobase = FUNC4(dev, res);
	if (FUNC0(f->iobase)) {
		ret = FUNC1(f->iobase);
		goto err_put_ctrl;
	}

	/* find the resources - controller memory mapped space */
	res = FUNC13(pdev, IORESOURCE_MEM, "fspi_mmap");
	f->ahb_addr = FUNC4(dev, res);
	if (FUNC0(f->ahb_addr)) {
		ret = FUNC1(f->ahb_addr);
		goto err_put_ctrl;
	}

	/* assign memory mapped starting address and mapped size. */
	f->memmap_phy = res->start;
	f->memmap_phy_size = FUNC15(res);

	/* find the clocks */
	f->clk_en = FUNC3(dev, "fspi_en");
	if (FUNC0(f->clk_en)) {
		ret = FUNC1(f->clk_en);
		goto err_put_ctrl;
	}

	f->clk = FUNC3(dev, "fspi");
	if (FUNC0(f->clk)) {
		ret = FUNC1(f->clk);
		goto err_put_ctrl;
	}

	ret = FUNC9(f);
	if (ret) {
		FUNC2(dev, "can not enable the clock\n");
		goto err_put_ctrl;
	}

	/* find the irq */
	ret = FUNC12(pdev, 0);
	if (ret < 0)
		goto err_disable_clk;

	ret = FUNC5(dev, ret,
			nxp_fspi_irq_handler, 0, pdev->name, f);
	if (ret) {
		FUNC2(dev, "failed to request irq: %d\n", ret);
		goto err_disable_clk;
	}

	FUNC7(&f->lock);

	ctlr->bus_num = -1;
	ctlr->num_chipselect = NXP_FSPI_MAX_CHIPSELECT;
	ctlr->mem_ops = &nxp_fspi_mem_ops;

	FUNC10(f);

	ctlr->dev.of_node = np;

	ret = FUNC19(ctlr);
	if (ret)
		goto err_destroy_mutex;

	return 0;

err_destroy_mutex:
	FUNC6(&f->lock);

err_disable_clk:
	FUNC8(f);

err_put_ctrl:
	FUNC18(ctlr);

	FUNC2(dev, "NXP FSPI probe failed\n");
	return ret;
}