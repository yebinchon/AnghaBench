#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int auto_runtime_pm; int mode_bits; int bits_per_word_mask; int min_speed_hz; int /*<<< orphan*/ * dma_tx; int /*<<< orphan*/ * dma_rx; int /*<<< orphan*/  can_dma; int /*<<< orphan*/  flags; int /*<<< orphan*/  handle_err; int /*<<< orphan*/  max_transfer_size; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  max_speed_hz; TYPE_1__ dev; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;
struct rockchip_spi {int freq; int rsd; int /*<<< orphan*/ * apb_pclk; int /*<<< orphan*/ * spiclk; scalar_t__ dma_addr_rx; scalar_t__ dma_addr_tx; TYPE_2__* dev; int /*<<< orphan*/  fifo_len; int /*<<< orphan*/ * regs; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int BAUDR_SCKDV_MAX ; 
 int BAUDR_SCKDV_MIN ; 
 int CR0_RSD_MAX ; 
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_SCLK_OUT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ROCKCHIP_SPI_MAX_CS_NUM ; 
 scalar_t__ ROCKCHIP_SPI_RXDR ; 
 scalar_t__ ROCKCHIP_SPI_TXDR ; 
 int FUNC3 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_LOOP ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  SPI_MASTER_GPIO_SS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,...) ; 
 void* FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,struct resource*) ; 
 int FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_master*) ; 
 int FUNC13 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct rockchip_spi*) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  rockchip_spi_can_dma ; 
 int /*<<< orphan*/  rockchip_spi_handle_err ; 
 int /*<<< orphan*/  rockchip_spi_isr ; 
 int /*<<< orphan*/  rockchip_spi_max_transfer_size ; 
 int /*<<< orphan*/  rockchip_spi_set_cs ; 
 int /*<<< orphan*/  rockchip_spi_transfer_one ; 
 struct spi_master* FUNC25 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct rockchip_spi*,int) ; 
 struct rockchip_spi* FUNC27 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC28 (struct spi_master*) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	int ret;
	struct rockchip_spi *rs;
	struct spi_master *master;
	struct resource *mem;
	u32 rsd_nsecs;

	master = FUNC25(&pdev->dev, sizeof(struct rockchip_spi));
	if (!master)
		return -ENOMEM;

	FUNC21(pdev, master);

	rs = FUNC27(master);

	/* Get basic io resource and map it */
	mem = FUNC20(pdev, IORESOURCE_MEM, 0);
	rs->regs = FUNC11(&pdev->dev, mem);
	if (FUNC1(rs->regs)) {
		ret =  FUNC2(rs->regs);
		goto err_put_master;
	}

	rs->apb_pclk = FUNC10(&pdev->dev, "apb_pclk");
	if (FUNC1(rs->apb_pclk)) {
		FUNC7(&pdev->dev, "Failed to get apb_pclk\n");
		ret = FUNC2(rs->apb_pclk);
		goto err_put_master;
	}

	rs->spiclk = FUNC10(&pdev->dev, "spiclk");
	if (FUNC1(rs->spiclk)) {
		FUNC7(&pdev->dev, "Failed to get spi_pclk\n");
		ret = FUNC2(rs->spiclk);
		goto err_put_master;
	}

	ret = FUNC6(rs->apb_pclk);
	if (ret < 0) {
		FUNC7(&pdev->dev, "Failed to enable apb_pclk\n");
		goto err_put_master;
	}

	ret = FUNC6(rs->spiclk);
	if (ret < 0) {
		FUNC7(&pdev->dev, "Failed to enable spi_clk\n");
		goto err_disable_apbclk;
	}

	FUNC26(rs, false);

	ret = FUNC19(pdev, 0);
	if (ret < 0)
		goto err_disable_spiclk;

	ret = FUNC12(&pdev->dev, ret, rockchip_spi_isr, NULL,
			IRQF_ONESHOT, FUNC8(&pdev->dev), master);
	if (ret)
		goto err_disable_spiclk;

	rs->dev = &pdev->dev;
	rs->freq = FUNC5(rs->spiclk);

	if (!FUNC18(pdev->dev.of_node, "rx-sample-delay-ns",
				  &rsd_nsecs)) {
		/* rx sample delay is expressed in parent clock cycles (max 3) */
		u32 rsd = FUNC0(rsd_nsecs * (rs->freq >> 8),
				1000000000 >> 8);
		if (!rsd) {
			FUNC9(rs->dev, "%u Hz are too slow to express %u ns delay\n",
					rs->freq, rsd_nsecs);
		} else if (rsd > CR0_RSD_MAX) {
			rsd = CR0_RSD_MAX;
			FUNC9(rs->dev, "%u Hz are too fast to express %u ns delay, clamping at %u ns\n",
					rs->freq, rsd_nsecs,
					CR0_RSD_MAX * 1000000000U / rs->freq);
		}
		rs->rsd = rsd;
	}

	rs->fifo_len = FUNC16(rs);
	if (!rs->fifo_len) {
		FUNC7(&pdev->dev, "Failed to get fifo length\n");
		ret = -EINVAL;
		goto err_disable_spiclk;
	}

	FUNC24(&pdev->dev);
	FUNC23(&pdev->dev);

	master->auto_runtime_pm = true;
	master->bus_num = pdev->id;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
	master->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
	master->dev.of_node = pdev->dev.of_node;
	master->bits_per_word_mask = FUNC3(16) | FUNC3(8) | FUNC3(4);
	master->min_speed_hz = rs->freq / BAUDR_SCKDV_MAX;
	master->max_speed_hz = FUNC17(rs->freq / BAUDR_SCKDV_MIN, MAX_SCLK_OUT);

	master->set_cs = rockchip_spi_set_cs;
	master->transfer_one = rockchip_spi_transfer_one;
	master->max_transfer_size = rockchip_spi_max_transfer_size;
	master->handle_err = rockchip_spi_handle_err;
	master->flags = SPI_MASTER_GPIO_SS;

	master->dma_tx = FUNC15(rs->dev, "tx");
	if (FUNC1(master->dma_tx)) {
		/* Check tx to see if we need defer probing driver */
		if (FUNC2(master->dma_tx) == -EPROBE_DEFER) {
			ret = -EPROBE_DEFER;
			goto err_disable_pm_runtime;
		}
		FUNC9(rs->dev, "Failed to request TX DMA channel\n");
		master->dma_tx = NULL;
	}

	master->dma_rx = FUNC15(rs->dev, "rx");
	if (FUNC1(master->dma_rx)) {
		if (FUNC2(master->dma_rx) == -EPROBE_DEFER) {
			ret = -EPROBE_DEFER;
			goto err_free_dma_tx;
		}
		FUNC9(rs->dev, "Failed to request RX DMA channel\n");
		master->dma_rx = NULL;
	}

	if (master->dma_tx && master->dma_rx) {
		rs->dma_addr_tx = mem->start + ROCKCHIP_SPI_TXDR;
		rs->dma_addr_rx = mem->start + ROCKCHIP_SPI_RXDR;
		master->can_dma = rockchip_spi_can_dma;
	}

	ret = FUNC13(&pdev->dev, master);
	if (ret < 0) {
		FUNC7(&pdev->dev, "Failed to register master\n");
		goto err_free_dma_rx;
	}

	return 0;

err_free_dma_rx:
	if (master->dma_rx)
		FUNC14(master->dma_rx);
err_free_dma_tx:
	if (master->dma_tx)
		FUNC14(master->dma_tx);
err_disable_pm_runtime:
	FUNC22(&pdev->dev);
err_disable_spiclk:
	FUNC4(rs->spiclk);
err_disable_apbclk:
	FUNC4(rs->apb_pclk);
err_put_master:
	FUNC28(master);

	return ret;
}