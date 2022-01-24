#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_20__ {struct device_node* of_node; } ;
struct spi_master {int bus_num; int num_chipselect; int* cs_gpios; int mode_bits; TYPE_9__ dev; int /*<<< orphan*/  slave_abort; int /*<<< orphan*/  unprepare_message; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; } ;
struct spi_imx_master {int num_chipselect; int* chipselect; } ;
struct spi_imx_devtype_data {int /*<<< orphan*/  (* intctrl ) (struct spi_imx_data*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reset ) (struct spi_imx_data*) ;scalar_t__ has_dmamode; scalar_t__ has_slavemode; } ;
struct TYPE_19__ {struct spi_master* master; int /*<<< orphan*/  txrx_bufs; int /*<<< orphan*/  setup_transfer; int /*<<< orphan*/  chipselect; } ;
struct spi_imx_data {int slave_mode; int spi_drctl; void* clk_per; void* clk_ipg; TYPE_3__ bitbang; struct spi_imx_devtype_data const* devtype_data; int /*<<< orphan*/  spi_clk; int /*<<< orphan*/  base_phys; void* base; int /*<<< orphan*/  xfer_done; TYPE_2__* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_18__ {struct device_node* of_node; } ;
struct platform_device {int id; TYPE_2__ dev; TYPE_1__* id_entry; } ;
struct of_device_id {struct spi_imx_devtype_data* data; } ;
struct device_node {int dummy; } ;
struct TYPE_17__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LOOP ; 
 int SPI_NO_CS ; 
 int SPI_READY ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,...) ; 
 struct spi_imx_master* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 void* FUNC11 (TYPE_2__*,char*) ; 
 int FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC13 (TYPE_2__*,struct resource*) ; 
 int* FUNC14 (TYPE_9__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_imx_data*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct spi_imx_data*) ; 
 scalar_t__ FUNC19 (struct spi_imx_data*) ; 
 scalar_t__ FUNC20 (struct spi_imx_data*) ; 
 struct of_device_id* FUNC21 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC22 (struct device_node*,char*) ; 
 int FUNC23 (struct device_node*,char*,int*) ; 
 int FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct spi_master*) ; 
 struct spi_master* FUNC27 (TYPE_2__*,int) ; 
 struct spi_master* FUNC28 (TYPE_2__*,int) ; 
 int FUNC29 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*) ; 
 int /*<<< orphan*/  spi_imx_chipselect ; 
 int /*<<< orphan*/  spi_imx_cleanup ; 
 int /*<<< orphan*/  spi_imx_dt_ids ; 
 int /*<<< orphan*/  spi_imx_isr ; 
 int /*<<< orphan*/  spi_imx_prepare_message ; 
 int FUNC31 (TYPE_2__*,struct spi_imx_data*,struct spi_master*) ; 
 int /*<<< orphan*/  spi_imx_setup ; 
 int /*<<< orphan*/  spi_imx_setupxfer ; 
 int /*<<< orphan*/  spi_imx_slave_abort ; 
 int /*<<< orphan*/  spi_imx_transfer ; 
 int /*<<< orphan*/  spi_imx_unprepare_message ; 
 struct spi_imx_data* FUNC32 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC33 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC34 (struct spi_imx_data*) ; 
 int /*<<< orphan*/  FUNC35 (struct spi_imx_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC36(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *of_id =
			FUNC21(spi_imx_dt_ids, &pdev->dev);
	struct spi_imx_master *mxc_platform_info =
			FUNC8(&pdev->dev);
	struct spi_master *master;
	struct spi_imx_data *spi_imx;
	struct resource *res;
	int i, ret, irq, spi_drctl;
	const struct spi_imx_devtype_data *devtype_data = of_id ? of_id->data :
		(struct spi_imx_devtype_data *)pdev->id_entry->driver_data;
	bool slave_mode;

	if (!np && !mxc_platform_info) {
		FUNC7(&pdev->dev, "can't get the platform data\n");
		return -EINVAL;
	}

	slave_mode = devtype_data->has_slavemode &&
			FUNC22(np, "spi-slave");
	if (slave_mode)
		master = FUNC28(&pdev->dev,
					 sizeof(struct spi_imx_data));
	else
		master = FUNC27(&pdev->dev,
					  sizeof(struct spi_imx_data));
	if (!master)
		return -ENOMEM;

	ret = FUNC23(np, "fsl,spi-rdy-drctl", &spi_drctl);
	if ((ret < 0) || (spi_drctl >= 0x3)) {
		/* '11' is reserved */
		spi_drctl = 0;
	}

	FUNC26(pdev, master);

	master->bits_per_word_mask = FUNC2(1, 32);
	master->bus_num = np ? -1 : pdev->id;

	spi_imx = FUNC32(master);
	spi_imx->bitbang.master = master;
	spi_imx->dev = &pdev->dev;
	spi_imx->slave_mode = slave_mode;

	spi_imx->devtype_data = devtype_data;

	/* Get number of chip selects, either platform data or OF */
	if (mxc_platform_info) {
		master->num_chipselect = mxc_platform_info->num_chipselect;
		if (mxc_platform_info->chipselect) {
			master->cs_gpios = FUNC14(&master->dev,
				master->num_chipselect, sizeof(int),
				GFP_KERNEL);
			if (!master->cs_gpios)
				return -ENOMEM;

			for (i = 0; i < master->num_chipselect; i++)
				master->cs_gpios[i] = mxc_platform_info->chipselect[i];
		}
	} else {
		u32 num_cs;

		if (!FUNC23(np, "num-cs", &num_cs))
			master->num_chipselect = num_cs;
		/* If not preset, default value of 1 is used */
	}

	spi_imx->bitbang.chipselect = spi_imx_chipselect;
	spi_imx->bitbang.setup_transfer = spi_imx_setupxfer;
	spi_imx->bitbang.txrx_bufs = spi_imx_transfer;
	spi_imx->bitbang.master->setup = spi_imx_setup;
	spi_imx->bitbang.master->cleanup = spi_imx_cleanup;
	spi_imx->bitbang.master->prepare_message = spi_imx_prepare_message;
	spi_imx->bitbang.master->unprepare_message = spi_imx_unprepare_message;
	spi_imx->bitbang.master->slave_abort = spi_imx_slave_abort;
	spi_imx->bitbang.master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH \
					     | SPI_NO_CS;
	if (FUNC18(spi_imx) || FUNC19(spi_imx) ||
	    FUNC20(spi_imx))
		spi_imx->bitbang.master->mode_bits |= SPI_LOOP | SPI_READY;

	spi_imx->spi_drctl = spi_drctl;

	FUNC17(&spi_imx->xfer_done);

	res = FUNC25(pdev, IORESOURCE_MEM, 0);
	spi_imx->base = FUNC13(&pdev->dev, res);
	if (FUNC0(spi_imx->base)) {
		ret = FUNC1(spi_imx->base);
		goto out_master_put;
	}
	spi_imx->base_phys = res->start;

	irq = FUNC24(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto out_master_put;
	}

	ret = FUNC15(&pdev->dev, irq, spi_imx_isr, 0,
			       FUNC10(&pdev->dev), spi_imx);
	if (ret) {
		FUNC7(&pdev->dev, "can't get irq%d: %d\n", irq, ret);
		goto out_master_put;
	}

	spi_imx->clk_ipg = FUNC11(&pdev->dev, "ipg");
	if (FUNC0(spi_imx->clk_ipg)) {
		ret = FUNC1(spi_imx->clk_ipg);
		goto out_master_put;
	}

	spi_imx->clk_per = FUNC11(&pdev->dev, "per");
	if (FUNC0(spi_imx->clk_per)) {
		ret = FUNC1(spi_imx->clk_per);
		goto out_master_put;
	}

	ret = FUNC6(spi_imx->clk_per);
	if (ret)
		goto out_master_put;

	ret = FUNC6(spi_imx->clk_ipg);
	if (ret)
		goto out_put_per;

	spi_imx->spi_clk = FUNC5(spi_imx->clk_per);
	/*
	 * Only validated on i.mx35 and i.mx6 now, can remove the constraint
	 * if validated on other chips.
	 */
	if (spi_imx->devtype_data->has_dmamode) {
		ret = FUNC31(&pdev->dev, spi_imx, master);
		if (ret == -EPROBE_DEFER)
			goto out_clk_put;

		if (ret < 0)
			FUNC7(&pdev->dev, "dma setup error %d, use pio\n",
				ret);
	}

	spi_imx->devtype_data->reset(spi_imx);

	spi_imx->devtype_data->intctrl(spi_imx, 0);

	master->dev.of_node = pdev->dev.of_node;
	ret = FUNC29(&spi_imx->bitbang);
	if (ret) {
		FUNC7(&pdev->dev, "bitbang start failed with %d\n", ret);
		goto out_clk_put;
	}

	/* Request GPIO CS lines, if any */
	if (!spi_imx->slave_mode && master->cs_gpios) {
		for (i = 0; i < master->num_chipselect; i++) {
			if (!FUNC16(master->cs_gpios[i]))
				continue;

			ret = FUNC12(&pdev->dev,
						master->cs_gpios[i],
						DRIVER_NAME);
			if (ret) {
				FUNC7(&pdev->dev, "Can't get CS GPIO %i\n",
					master->cs_gpios[i]);
				goto out_spi_bitbang;
			}
		}
	}

	FUNC9(&pdev->dev, "probed\n");

	FUNC3(spi_imx->clk_ipg);
	FUNC3(spi_imx->clk_per);
	return ret;

out_spi_bitbang:
	FUNC30(&spi_imx->bitbang);
out_clk_put:
	FUNC4(spi_imx->clk_ipg);
out_put_per:
	FUNC4(spi_imx->clk_per);
out_master_put:
	FUNC33(master);

	return ret;
}