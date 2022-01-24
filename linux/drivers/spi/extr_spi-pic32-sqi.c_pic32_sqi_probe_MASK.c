#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int num_chipselect; int dma_alignment; int mode_bits; TYPE_1__ dev; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  prepare_transfer_hardware; int /*<<< orphan*/  transfer_one_message; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  can_dma; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_dma_len; int /*<<< orphan*/  max_speed_hz; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pic32_sqi {int irq; void* sys_clk; void* base_clk; int /*<<< orphan*/  xfer_done; void* regs; struct spi_master* master; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  PESQI_BD_BUF_LEN_MAX ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  SPI_MASTER_HALF_DUPLEX ; 
 int SPI_MODE_0 ; 
 int SPI_MODE_3 ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 void* FUNC8 (TYPE_1__*,char*) ; 
 void* FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct pic32_sqi*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pic32_sqi_can_dma ; 
 int /*<<< orphan*/  FUNC13 (struct pic32_sqi*) ; 
 int /*<<< orphan*/  pic32_sqi_isr ; 
 int /*<<< orphan*/  pic32_sqi_one_message ; 
 int /*<<< orphan*/  pic32_sqi_prepare_hardware ; 
 int /*<<< orphan*/  pic32_sqi_unprepare_hardware ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct pic32_sqi*) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pic32_sqi*) ; 
 int FUNC17 (struct pic32_sqi*) ; 
 int /*<<< orphan*/  FUNC18 (struct pic32_sqi*) ; 
 struct spi_master* FUNC19 (TYPE_1__*,int) ; 
 struct pic32_sqi* FUNC20 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC21 (struct spi_master*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct spi_master *master;
	struct pic32_sqi *sqi;
	int ret;

	master = FUNC19(&pdev->dev, sizeof(*sqi));
	if (!master)
		return -ENOMEM;

	sqi = FUNC20(master);
	sqi->master = master;

	sqi->regs = FUNC9(pdev, 0);
	if (FUNC0(sqi->regs)) {
		ret = FUNC1(sqi->regs);
		goto err_free_master;
	}

	/* irq */
	sqi->irq = FUNC14(pdev, 0);
	if (sqi->irq < 0) {
		ret = sqi->irq;
		goto err_free_master;
	}

	/* clocks */
	sqi->sys_clk = FUNC8(&pdev->dev, "reg_ck");
	if (FUNC0(sqi->sys_clk)) {
		ret = FUNC1(sqi->sys_clk);
		FUNC6(&pdev->dev, "no sys_clk ?\n");
		goto err_free_master;
	}

	sqi->base_clk = FUNC8(&pdev->dev, "spi_ck");
	if (FUNC0(sqi->base_clk)) {
		ret = FUNC1(sqi->base_clk);
		FUNC6(&pdev->dev, "no base clk ?\n");
		goto err_free_master;
	}

	ret = FUNC5(sqi->sys_clk);
	if (ret) {
		FUNC6(&pdev->dev, "sys clk enable failed\n");
		goto err_free_master;
	}

	ret = FUNC5(sqi->base_clk);
	if (ret) {
		FUNC6(&pdev->dev, "base clk enable failed\n");
		FUNC3(sqi->sys_clk);
		goto err_free_master;
	}

	FUNC12(&sqi->xfer_done);

	/* initialize hardware */
	FUNC13(sqi);

	/* allocate buffers & descriptors */
	ret = FUNC17(sqi);
	if (ret) {
		FUNC6(&pdev->dev, "ring alloc failed\n");
		goto err_disable_clk;
	}

	/* install irq handlers */
	ret = FUNC16(sqi->irq, pic32_sqi_isr, 0,
			  FUNC7(&pdev->dev), sqi);
	if (ret < 0) {
		FUNC6(&pdev->dev, "request_irq(%d), failed\n", sqi->irq);
		goto err_free_ring;
	}

	/* register master */
	master->num_chipselect	= 2;
	master->max_speed_hz	= FUNC4(sqi->base_clk);
	master->dma_alignment	= 32;
	master->max_dma_len	= PESQI_BD_BUF_LEN_MAX;
	master->dev.of_node	= pdev->dev.of_node;
	master->mode_bits	= SPI_MODE_3 | SPI_MODE_0 | SPI_TX_DUAL |
				  SPI_RX_DUAL | SPI_TX_QUAD | SPI_RX_QUAD;
	master->flags		= SPI_MASTER_HALF_DUPLEX;
	master->can_dma		= pic32_sqi_can_dma;
	master->bits_per_word_mask	= FUNC2(8, 32);
	master->transfer_one_message	= pic32_sqi_one_message;
	master->prepare_transfer_hardware	= pic32_sqi_prepare_hardware;
	master->unprepare_transfer_hardware	= pic32_sqi_unprepare_hardware;

	ret = FUNC10(&pdev->dev, master);
	if (ret) {
		FUNC6(&master->dev, "failed registering spi master\n");
		FUNC11(sqi->irq, sqi);
		goto err_free_ring;
	}

	FUNC15(pdev, sqi);

	return 0;

err_free_ring:
	FUNC18(sqi);

err_disable_clk:
	FUNC3(sqi->base_clk);
	FUNC3(sqi->sys_clk);

err_free_master:
	FUNC21(master);
	return ret;
}