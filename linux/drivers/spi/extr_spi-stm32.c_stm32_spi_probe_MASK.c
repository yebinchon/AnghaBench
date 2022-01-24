#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct stm32_spi_cfg {int (* config ) (struct stm32_spi*) ;int baud_rate_div_min; int baud_rate_div_max; int /*<<< orphan*/  (* get_bpw_mask ) (struct stm32_spi*) ;int /*<<< orphan*/  (* get_fifo_size ) (struct stm32_spi*) ;scalar_t__ has_fifo; int /*<<< orphan*/  irq_handler_thread; int /*<<< orphan*/  irq_handler_event; } ;
struct stm32_spi {int irq; int clk_rate; int /*<<< orphan*/  clk; void* dma_rx; void* dma_tx; TYPE_3__* dev; struct stm32_spi_cfg const* cfg; int /*<<< orphan*/  fifo_size; int /*<<< orphan*/  rst; scalar_t__ phys_addr; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; struct spi_master* master; } ;
struct TYPE_19__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int auto_runtime_pm; int mode_bits; int max_speed_hz; int min_speed_hz; int* cs_gpios; int num_chipselect; int /*<<< orphan*/  can_dma; void* dma_rx; void* dma_tx; int /*<<< orphan*/  unprepare_message; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  bus_num; TYPE_1__ dev; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_21__ {int /*<<< orphan*/  of_node; TYPE_2__* driver; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_22__ {scalar_t__ data; } ;
struct TYPE_20__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_3WIRE ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct resource*) ; 
 int FUNC11 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_3__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 void* FUNC15 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 TYPE_7__* FUNC17 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC26 (TYPE_3__*,int) ; 
 struct stm32_spi* FUNC27 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC28 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_spi_can_dma ; 
 int /*<<< orphan*/  stm32_spi_prepare_msg ; 
 int /*<<< orphan*/  stm32_spi_setup ; 
 int /*<<< orphan*/  stm32_spi_transfer_one ; 
 int /*<<< orphan*/  stm32_spi_unprepare_msg ; 
 int /*<<< orphan*/  FUNC30 (struct stm32_spi*) ; 
 int FUNC31 (struct stm32_spi*) ; 
 int /*<<< orphan*/  FUNC32 (struct stm32_spi*) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	struct spi_master *master;
	struct stm32_spi *spi;
	struct resource *res;
	int i, ret;

	master = FUNC26(&pdev->dev, sizeof(struct stm32_spi));
	if (!master) {
		FUNC5(&pdev->dev, "spi master allocation failed\n");
		return -ENOMEM;
	}
	FUNC20(pdev, master);

	spi = FUNC27(master);
	spi->dev = &pdev->dev;
	spi->master = master;
	FUNC29(&spi->lock);

	spi->cfg = (const struct stm32_spi_cfg *)
		FUNC17(pdev->dev.driver->of_match_table,
				&pdev->dev)->data;

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	spi->base = FUNC10(&pdev->dev, res);
	if (FUNC0(spi->base)) {
		ret = FUNC1(spi->base);
		goto err_master_put;
	}

	spi->phys_addr = (dma_addr_t)res->start;

	spi->irq = FUNC18(pdev, 0);
	if (spi->irq <= 0) {
		ret = spi->irq;
		if (ret != -EPROBE_DEFER)
			FUNC5(&pdev->dev, "failed to get irq: %d\n", ret);
		goto err_master_put;
	}
	ret = FUNC11(&pdev->dev, spi->irq,
					spi->cfg->irq_handler_event,
					spi->cfg->irq_handler_thread,
					IRQF_ONESHOT, pdev->name, master);
	if (ret) {
		FUNC5(&pdev->dev, "irq%d request failed: %d\n", spi->irq,
			ret);
		goto err_master_put;
	}

	spi->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(spi->clk)) {
		ret = FUNC1(spi->clk);
		FUNC5(&pdev->dev, "clk get failed: %d\n", ret);
		goto err_master_put;
	}

	ret = FUNC4(spi->clk);
	if (ret) {
		FUNC5(&pdev->dev, "clk enable failed: %d\n", ret);
		goto err_master_put;
	}
	spi->clk_rate = FUNC3(spi->clk);
	if (!spi->clk_rate) {
		FUNC5(&pdev->dev, "clk rate = 0\n");
		ret = -EINVAL;
		goto err_clk_disable;
	}

	spi->rst = FUNC12(&pdev->dev, NULL);
	if (!FUNC0(spi->rst)) {
		FUNC24(spi->rst);
		FUNC33(2);
		FUNC25(spi->rst);
	}

	if (spi->cfg->has_fifo)
		spi->fifo_size = spi->cfg->get_fifo_size(spi);

	ret = spi->cfg->config(spi);
	if (ret) {
		FUNC5(&pdev->dev, "controller configuration failed: %d\n",
			ret);
		goto err_clk_disable;
	}

	master->dev.of_node = pdev->dev.of_node;
	master->auto_runtime_pm = true;
	master->bus_num = pdev->id;
	master->mode_bits = SPI_CPHA | SPI_CPOL | SPI_CS_HIGH | SPI_LSB_FIRST |
			    SPI_3WIRE;
	master->bits_per_word_mask = spi->cfg->get_bpw_mask(spi);
	master->max_speed_hz = spi->clk_rate / spi->cfg->baud_rate_div_min;
	master->min_speed_hz = spi->clk_rate / spi->cfg->baud_rate_div_max;
	master->setup = stm32_spi_setup;
	master->prepare_message = stm32_spi_prepare_msg;
	master->transfer_one = stm32_spi_transfer_one;
	master->unprepare_message = stm32_spi_unprepare_msg;

	spi->dma_tx = FUNC15(spi->dev, "tx");
	if (!spi->dma_tx)
		FUNC7(&pdev->dev, "failed to request tx dma channel\n");
	else
		master->dma_tx = spi->dma_tx;

	spi->dma_rx = FUNC15(spi->dev, "rx");
	if (!spi->dma_rx)
		FUNC7(&pdev->dev, "failed to request rx dma channel\n");
	else
		master->dma_rx = spi->dma_rx;

	if (spi->dma_tx || spi->dma_rx)
		master->can_dma = stm32_spi_can_dma;

	FUNC23(&pdev->dev);
	FUNC22(&pdev->dev);

	ret = FUNC13(&pdev->dev, master);
	if (ret) {
		FUNC5(&pdev->dev, "spi master registration failed: %d\n",
			ret);
		goto err_dma_release;
	}

	if (!master->cs_gpios) {
		FUNC5(&pdev->dev, "no CS gpios available\n");
		ret = -EINVAL;
		goto err_dma_release;
	}

	for (i = 0; i < master->num_chipselect; i++) {
		if (!FUNC16(master->cs_gpios[i])) {
			FUNC5(&pdev->dev, "%i is not a valid gpio\n",
				master->cs_gpios[i]);
			ret = -EINVAL;
			goto err_dma_release;
		}

		ret = FUNC9(&pdev->dev, master->cs_gpios[i],
					DRIVER_NAME);
		if (ret) {
			FUNC5(&pdev->dev, "can't get CS gpio %i\n",
				master->cs_gpios[i]);
			goto err_dma_release;
		}
	}

	FUNC6(&pdev->dev, "driver initialized\n");

	return 0;

err_dma_release:
	if (spi->dma_tx)
		FUNC14(spi->dma_tx);
	if (spi->dma_rx)
		FUNC14(spi->dma_rx);

	FUNC21(&pdev->dev);
err_clk_disable:
	FUNC2(spi->clk);
err_master_put:
	FUNC28(master);

	return ret;
}