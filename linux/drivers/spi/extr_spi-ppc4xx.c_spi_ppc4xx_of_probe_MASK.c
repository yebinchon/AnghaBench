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
struct spi_ppc4xx_regs {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; TYPE_1__ dev; } ;
struct spi_bitbang {struct spi_master* master; scalar_t__ use_dma; int /*<<< orphan*/  txrx_bufs; int /*<<< orphan*/  chipselect; int /*<<< orphan*/  setup_transfer; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct ppc4xx_spi {int* gpios; unsigned int opb_freq; int mapsize; int /*<<< orphan*/  irqnum; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  regs; struct spi_master* master; struct spi_bitbang bitbang; int /*<<< orphan*/  done; struct device* dev; } ;
struct device {scalar_t__ dma_mask; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OF_GPIO_ACTIVE_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ppc4xx_spi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ppc4xx_spi*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,int /*<<< orphan*/ ) ; 
 int* FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct device_node* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (struct device_node*,int,int*) ; 
 unsigned int* FUNC16 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct resource*) ; 
 struct spi_master* FUNC24 (struct device*,int) ; 
 int FUNC25 (struct spi_bitbang*) ; 
 struct ppc4xx_spi* FUNC26 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC27 (struct spi_master*) ; 
 int /*<<< orphan*/  spi_ppc4xx_chipsel ; 
 int /*<<< orphan*/  spi_ppc4xx_cleanup ; 
 int /*<<< orphan*/  FUNC28 (struct ppc4xx_spi*) ; 
 int /*<<< orphan*/  spi_ppc4xx_int ; 
 int /*<<< orphan*/  spi_ppc4xx_setup ; 
 int /*<<< orphan*/  spi_ppc4xx_setupxfer ; 
 int /*<<< orphan*/  spi_ppc4xx_txrx ; 

__attribute__((used)) static int FUNC29(struct platform_device *op)
{
	struct ppc4xx_spi *hw;
	struct spi_master *master;
	struct spi_bitbang *bbp;
	struct resource resource;
	struct device_node *np = op->dev.of_node;
	struct device *dev = &op->dev;
	struct device_node *opbnp;
	int ret;
	int num_gpios;
	const unsigned int *clk;

	master = FUNC24(dev, sizeof *hw);
	if (master == NULL)
		return -ENOMEM;
	master->dev.of_node = np;
	FUNC19(op, master);
	hw = FUNC26(master);
	hw->master = master;
	hw->dev = dev;

	FUNC8(&hw->done);

	/*
	 * A count of zero implies a single SPI device without any chip-select.
	 * Note that of_gpio_count counts all gpios assigned to this spi master.
	 * This includes both "null" gpio's and real ones.
	 */
	num_gpios = FUNC17(np);
	if (num_gpios > 0) {
		int i;

		hw->gpios = FUNC12(num_gpios, sizeof(*hw->gpios), GFP_KERNEL);
		if (!hw->gpios) {
			ret = -ENOMEM;
			goto free_master;
		}

		for (i = 0; i < num_gpios; i++) {
			int gpio;
			enum of_gpio_flags flags;

			gpio = FUNC15(np, i, &flags);
			hw->gpios[i] = gpio;

			if (FUNC6(gpio)) {
				/* Real CS - set the initial state. */
				ret = FUNC7(gpio, np->name);
				if (ret < 0) {
					FUNC1(dev,
						"can't request gpio #%d: %d\n",
						i, ret);
					goto free_gpios;
				}

				FUNC5(gpio,
						!!(flags & OF_GPIO_ACTIVE_LOW));
			} else if (gpio == -EEXIST) {
				; /* No CS, but that's OK. */
			} else {
				FUNC1(dev, "invalid gpio #%d: %d\n", i, gpio);
				ret = -EINVAL;
				goto free_gpios;
			}
		}
	}

	/* Setup the state for the bitbang driver */
	bbp = &hw->bitbang;
	bbp->master = hw->master;
	bbp->setup_transfer = spi_ppc4xx_setupxfer;
	bbp->chipselect = spi_ppc4xx_chipsel;
	bbp->txrx_bufs = spi_ppc4xx_txrx;
	bbp->use_dma = 0;
	bbp->master->setup = spi_ppc4xx_setup;
	bbp->master->cleanup = spi_ppc4xx_cleanup;
	bbp->master->bits_per_word_mask = FUNC0(8);

	/* the spi->mode bits understood by this driver: */
	bbp->master->mode_bits =
		SPI_CPHA | SPI_CPOL | SPI_CS_HIGH | SPI_LSB_FIRST;

	/* this many pins in all GPIO controllers */
	bbp->master->num_chipselect = num_gpios > 0 ? num_gpios : 0;

	/* Get the clock for the OPB */
	opbnp = FUNC14(NULL, NULL, "ibm,opb");
	if (opbnp == NULL) {
		FUNC1(dev, "OPB: cannot find node\n");
		ret = -ENODEV;
		goto free_gpios;
	}
	/* Get the clock (Hz) for the OPB */
	clk = FUNC16(opbnp, "clock-frequency", NULL);
	if (clk == NULL) {
		FUNC1(dev, "OPB: no clock-frequency property set\n");
		FUNC18(opbnp);
		ret = -ENODEV;
		goto free_gpios;
	}
	hw->opb_freq = *clk;
	hw->opb_freq >>= 2;
	FUNC18(opbnp);

	ret = FUNC13(np, 0, &resource);
	if (ret) {
		FUNC1(dev, "error while parsing device node resource\n");
		goto free_gpios;
	}
	hw->mapbase = resource.start;
	hw->mapsize = FUNC23(&resource);

	/* Sanity check */
	if (hw->mapsize < sizeof(struct spi_ppc4xx_regs)) {
		FUNC1(dev, "too small to map registers\n");
		ret = -EINVAL;
		goto free_gpios;
	}

	/* Request IRQ */
	hw->irqnum = FUNC11(np, 0);
	ret = FUNC21(hw->irqnum, spi_ppc4xx_int,
			  0, "spi_ppc4xx_of", (void *)hw);
	if (ret) {
		FUNC1(dev, "unable to allocate interrupt\n");
		goto free_gpios;
	}

	if (!FUNC22(hw->mapbase, hw->mapsize, DRIVER_NAME)) {
		FUNC1(dev, "resource unavailable\n");
		ret = -EBUSY;
		goto request_mem_error;
	}

	hw->regs = FUNC9(hw->mapbase, sizeof(struct spi_ppc4xx_regs));

	if (!hw->regs) {
		FUNC1(dev, "unable to memory map registers\n");
		ret = -ENXIO;
		goto map_io_error;
	}

	FUNC28(hw);

	/* Finally register our spi controller */
	dev->dma_mask = 0;
	ret = FUNC25(bbp);
	if (ret) {
		FUNC1(dev, "failed to register SPI master\n");
		goto unmap_regs;
	}

	FUNC2(dev, "driver initialized\n");

	return 0;

unmap_regs:
	FUNC10(hw->regs);
map_io_error:
	FUNC20(hw->mapbase, hw->mapsize);
request_mem_error:
	FUNC4(hw->irqnum, hw);
free_gpios:
	FUNC3(hw);
free_master:
	FUNC27(master);

	FUNC1(dev, "initialization failed\n");
	return ret;
}