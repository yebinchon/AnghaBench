#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; } ;
struct spi_master {int num_chipselect; int auto_runtime_pm; int mode_bits; int /*<<< orphan*/  bus_num; TYPE_1__ dev; int /*<<< orphan*/  rt; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  transfer_one_message; int /*<<< orphan*/  setup; int /*<<< orphan*/  cleanup; } ;
struct pl022_ssp_controller {int num_chipselect; int* chipselects; int enable_dma; int /*<<< orphan*/  autosuspend_delay; int /*<<< orphan*/  rt; int /*<<< orphan*/  bus_id; } ;
struct pl022 {int* chipselects; int /*<<< orphan*/  clk; int /*<<< orphan*/ * virtbase; int /*<<< orphan*/  pump_transfers; int /*<<< orphan*/  phybase; TYPE_2__* vendor; struct amba_device* adev; struct pl022_ssp_controller* master_info; struct spi_master* master; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct amba_id {TYPE_2__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  start; } ;
struct amba_device {struct device dev; int /*<<< orphan*/ * irq; TYPE_3__ res; int /*<<< orphan*/  periphid; } ;
struct TYPE_5__ {scalar_t__ extended_cr; scalar_t__ internal_cs_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LOOP ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int SSP_CR1_MASK_SSE ; 
 int /*<<< orphan*/  FUNC4 (struct amba_device*) ; 
 int FUNC5 (struct amba_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct amba_device*,struct pl022*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,...) ; 
 struct pl022_ssp_controller* FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct device*,int,char*) ; 
 int /*<<< orphan*/ * FUNC15 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC16 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pl022*) ; 
 int FUNC18 (struct device*,struct spi_master*) ; 
 scalar_t__ FUNC19 (int,int) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct pl022*) ; 
 int FUNC22 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  pl022_cleanup ; 
 int FUNC23 (struct pl022*) ; 
 int FUNC24 (struct pl022*) ; 
 int /*<<< orphan*/  FUNC25 (struct pl022*) ; 
 int /*<<< orphan*/  pl022_interrupt_handler ; 
 struct pl022_ssp_controller* FUNC26 (struct device*) ; 
 int /*<<< orphan*/  pl022_setup ; 
 int /*<<< orphan*/  pl022_transfer_one_message ; 
 int /*<<< orphan*/  pl022_unprepare_transfer_hardware ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  pump_transfers ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_3__*) ; 
 struct spi_master* FUNC32 (struct device*,int) ; 
 struct pl022* FUNC33 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC34 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC36 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC37(struct amba_device *adev, const struct amba_id *id)
{
	struct device *dev = &adev->dev;
	struct pl022_ssp_controller *platform_info =
			FUNC11(&adev->dev);
	struct spi_master *master;
	struct pl022 *pl022 = NULL;	/*Data for this driver */
	struct device_node *np = adev->dev.of_node;
	int status = 0, i, num_cs;

	FUNC12(&adev->dev,
		 "ARM PL022 driver, device ID: 0x%08x\n", adev->periphid);
	if (!platform_info && FUNC0(CONFIG_OF))
		platform_info = FUNC26(dev);

	if (!platform_info) {
		FUNC10(dev, "probe: no platform data defined\n");
		return -ENODEV;
	}

	if (platform_info->num_chipselect) {
		num_cs = platform_info->num_chipselect;
	} else {
		FUNC10(dev, "probe: no chip select defined\n");
		return -ENODEV;
	}

	/* Allocate master with space for data */
	master = FUNC32(dev, sizeof(struct pl022));
	if (master == NULL) {
		FUNC10(&adev->dev, "probe - cannot alloc SPI master\n");
		return -ENOMEM;
	}

	pl022 = FUNC33(master);
	pl022->master = master;
	pl022->master_info = platform_info;
	pl022->adev = adev;
	pl022->vendor = id->data;
	pl022->chipselects = FUNC16(dev, num_cs, sizeof(int),
					  GFP_KERNEL);
	if (!pl022->chipselects) {
		status = -ENOMEM;
		goto err_no_mem;
	}

	/*
	 * Bus Number Which has been Assigned to this SSP controller
	 * on this board
	 */
	master->bus_num = platform_info->bus_id;
	master->num_chipselect = num_cs;
	master->cleanup = pl022_cleanup;
	master->setup = pl022_setup;
	master->auto_runtime_pm = true;
	master->transfer_one_message = pl022_transfer_one_message;
	master->unprepare_transfer_hardware = pl022_unprepare_transfer_hardware;
	master->rt = platform_info->rt;
	master->dev.of_node = dev->of_node;

	if (platform_info->num_chipselect && platform_info->chipselects) {
		for (i = 0; i < num_cs; i++)
			pl022->chipselects[i] = platform_info->chipselects[i];
	} else if (pl022->vendor->internal_cs_ctrl) {
		for (i = 0; i < num_cs; i++)
			pl022->chipselects[i] = i;
	} else if (FUNC0(CONFIG_OF)) {
		for (i = 0; i < num_cs; i++) {
			int cs_gpio = FUNC22(np, "cs-gpios", i);

			if (cs_gpio == -EPROBE_DEFER) {
				status = -EPROBE_DEFER;
				goto err_no_gpio;
			}

			pl022->chipselects[i] = cs_gpio;

			if (FUNC20(cs_gpio)) {
				if (FUNC14(dev, cs_gpio, "ssp-pl022"))
					FUNC10(&adev->dev,
						"could not request %d gpio\n",
						cs_gpio);
				else if (FUNC19(cs_gpio, 1))
					FUNC10(&adev->dev,
						"could not set gpio %d as output\n",
						cs_gpio);
			}
		}
	}

	/*
	 * Supports mode 0-3, loopback, and active low CS. Transfers are
	 * always MS bit first on the original pl022.
	 */
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LOOP;
	if (pl022->vendor->extended_cr)
		master->mode_bits |= SPI_LSB_FIRST;

	FUNC9(&adev->dev, "BUSNO: %d\n", master->bus_num);

	status = FUNC5(adev, NULL);
	if (status)
		goto err_no_ioregion;

	pl022->phybase = adev->res.start;
	pl022->virtbase = FUNC15(dev, adev->res.start,
				       FUNC31(&adev->res));
	if (pl022->virtbase == NULL) {
		status = -ENOMEM;
		goto err_no_ioremap;
	}
	FUNC12(&adev->dev, "mapped registers from %pa to %p\n",
		adev->res.start, pl022->virtbase);

	pl022->clk = FUNC13(&adev->dev, NULL);
	if (FUNC1(pl022->clk)) {
		status = FUNC2(pl022->clk);
		FUNC10(&adev->dev, "could not retrieve SSP/SPI bus clock\n");
		goto err_no_clk;
	}

	status = FUNC8(pl022->clk);
	if (status) {
		FUNC10(&adev->dev, "could not enable SSP/SPI bus clock\n");
		goto err_no_clk_en;
	}

	/* Initialize transfer pump */
	FUNC35(&pl022->pump_transfers, pump_transfers,
		     (unsigned long)pl022);

	/* Disable SSP */
	FUNC36((FUNC30(FUNC3(pl022->virtbase)) & (~SSP_CR1_MASK_SSE)),
	       FUNC3(pl022->virtbase));
	FUNC21(pl022);

	status = FUNC17(dev, adev->irq[0], pl022_interrupt_handler,
				  0, "pl022", pl022);
	if (status < 0) {
		FUNC10(&adev->dev, "probe - cannot get IRQ (%d)\n", status);
		goto err_no_irq;
	}

	/* Get DMA channels, try autoconfiguration first */
	status = FUNC23(pl022);
	if (status == -EPROBE_DEFER) {
		FUNC9(dev, "deferring probe to get DMA channel\n");
		goto err_no_irq;
	}

	/* If that failed, use channels from platform_info */
	if (status == 0)
		platform_info->enable_dma = 1;
	else if (platform_info->enable_dma) {
		status = FUNC24(pl022);
		if (status != 0)
			platform_info->enable_dma = 0;
	}

	/* Register with the SPI framework */
	FUNC6(adev, pl022);
	status = FUNC18(&adev->dev, master);
	if (status != 0) {
		FUNC10(&adev->dev,
			"probe - problem registering spi master\n");
		goto err_spi_register;
	}
	FUNC9(dev, "probe succeeded\n");

	/* let runtime pm put suspend */
	if (platform_info->autosuspend_delay > 0) {
		FUNC12(&adev->dev,
			"will use autosuspend for runtime pm, delay %dms\n",
			platform_info->autosuspend_delay);
		FUNC28(dev,
			platform_info->autosuspend_delay);
		FUNC29(dev);
	}
	FUNC27(dev);

	return 0;

 err_spi_register:
	if (platform_info->enable_dma)
		FUNC25(pl022);
 err_no_irq:
	FUNC7(pl022->clk);
 err_no_clk_en:
 err_no_clk:
 err_no_ioremap:
	FUNC4(adev);
 err_no_ioregion:
 err_no_gpio:
 err_no_mem:
	FUNC34(master);
	return status;
}