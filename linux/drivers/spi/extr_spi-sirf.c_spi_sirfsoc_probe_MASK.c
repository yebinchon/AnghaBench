#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; int bits_per_word_mask; int flags; int /*<<< orphan*/  bus_num; TYPE_1__ dev; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; } ;
struct TYPE_11__ {struct spi_master* master; int /*<<< orphan*/  txrx_bufs; int /*<<< orphan*/  setup_transfer; int /*<<< orphan*/  chipselect; } ;
struct sirfsoc_spi {int fifo_size; int fifo_level_chk_mask; void* rx_chan; void* tx_chan; int /*<<< orphan*/  clk; TYPE_2__ bitbang; int /*<<< orphan*/  tx_done; int /*<<< orphan*/  rx_done; int /*<<< orphan*/  ctrl_freq; int /*<<< orphan*/  base; int /*<<< orphan*/  dat_max_frm_len; int /*<<< orphan*/  type; int /*<<< orphan*/  regs; int /*<<< orphan*/  fifo_full_offset; } ;
struct sirf_spi_comp_data {int fifo_size; int /*<<< orphan*/  (* hwinit ) (struct sirfsoc_spi*) ;int /*<<< orphan*/  dat_max_frm_len; int /*<<< orphan*/  type; int /*<<< orphan*/  regs; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; } ;
struct of_device_id {struct sirf_spi_comp_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIRFSOC_SPI_DEFAULT_FRQ ; 
 int FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 int SPI_MASTER_MUST_RX ; 
 int SPI_MASTER_MUST_TX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sirfsoc_spi*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 void* FUNC14 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct spi_master*) ; 
 struct spi_master* FUNC20 (TYPE_3__*,int) ; 
 int FUNC21 (TYPE_2__*) ; 
 struct sirfsoc_spi* FUNC22 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC23 (struct spi_master*) ; 
 int /*<<< orphan*/  spi_sirfsoc_chipselect ; 
 int /*<<< orphan*/  spi_sirfsoc_cleanup ; 
 int /*<<< orphan*/  spi_sirfsoc_irq ; 
 int /*<<< orphan*/  spi_sirfsoc_of_match ; 
 int /*<<< orphan*/  spi_sirfsoc_setup ; 
 int /*<<< orphan*/  spi_sirfsoc_setup_transfer ; 
 int /*<<< orphan*/  spi_sirfsoc_transfer ; 
 int /*<<< orphan*/  FUNC24 (struct sirfsoc_spi*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct sirfsoc_spi *sspi;
	struct spi_master *master;
	const struct sirf_spi_comp_data *spi_comp_data;
	int irq;
	int ret;
	const struct of_device_id *match;

	ret = FUNC10(&pdev->dev);
	if (ret) {
		FUNC8(&pdev->dev, "SPI reset failed!\n");
		return ret;
	}

	master = FUNC20(&pdev->dev, sizeof(*sspi));
	if (!master) {
		FUNC8(&pdev->dev, "Unable to allocate SPI master\n");
		return -ENOMEM;
	}
	match = FUNC17(spi_sirfsoc_of_match, pdev->dev.of_node);
	FUNC19(pdev, master);
	sspi = FUNC22(master);
	sspi->fifo_full_offset = FUNC15(sspi->fifo_size);
	spi_comp_data = match->data;
	sspi->regs = spi_comp_data->regs;
	sspi->type = spi_comp_data->type;
	sspi->fifo_level_chk_mask = (sspi->fifo_size / 4) - 1;
	sspi->dat_max_frm_len = spi_comp_data->dat_max_frm_len;
	sspi->fifo_size = spi_comp_data->fifo_size;
	sspi->base = FUNC11(pdev, 0);
	if (FUNC0(sspi->base)) {
		ret = FUNC1(sspi->base);
		goto free_master;
	}
	irq = FUNC18(pdev, 0);
	if (irq < 0) {
		ret = -ENXIO;
		goto free_master;
	}
	ret = FUNC12(&pdev->dev, irq, spi_sirfsoc_irq, 0,
				DRIVER_NAME, sspi);
	if (ret)
		goto free_master;

	sspi->bitbang.master = master;
	sspi->bitbang.chipselect = spi_sirfsoc_chipselect;
	sspi->bitbang.setup_transfer = spi_sirfsoc_setup_transfer;
	sspi->bitbang.txrx_bufs = spi_sirfsoc_transfer;
	sspi->bitbang.master->setup = spi_sirfsoc_setup;
	sspi->bitbang.master->cleanup = spi_sirfsoc_cleanup;
	master->bus_num = pdev->id;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LSB_FIRST | SPI_CS_HIGH;
	master->bits_per_word_mask = FUNC2(8) | FUNC2(12) |
					FUNC2(16) | FUNC2(32);
	master->max_speed_hz = SIRFSOC_SPI_DEFAULT_FRQ;
	master->flags = SPI_MASTER_MUST_RX | SPI_MASTER_MUST_TX;
	sspi->bitbang.master->dev.of_node = pdev->dev.of_node;

	/* request DMA channels */
	sspi->rx_chan = FUNC14(&pdev->dev, "rx");
	if (!sspi->rx_chan) {
		FUNC8(&pdev->dev, "can not allocate rx dma channel\n");
		ret = -ENODEV;
		goto free_master;
	}
	sspi->tx_chan = FUNC14(&pdev->dev, "tx");
	if (!sspi->tx_chan) {
		FUNC8(&pdev->dev, "can not allocate tx dma channel\n");
		ret = -ENODEV;
		goto free_rx_dma;
	}

	sspi->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(sspi->clk)) {
		ret = FUNC1(sspi->clk);
		goto free_tx_dma;
	}
	FUNC6(sspi->clk);
	if (spi_comp_data->hwinit)
		spi_comp_data->hwinit(sspi);
	sspi->ctrl_freq = FUNC5(sspi->clk);

	FUNC16(&sspi->rx_done);
	FUNC16(&sspi->tx_done);

	ret = FUNC21(&sspi->bitbang);
	if (ret)
		goto free_clk;
	FUNC9(&pdev->dev, "registered, bus number = %d\n", master->bus_num);

	return 0;
free_clk:
	FUNC3(sspi->clk);
	FUNC7(sspi->clk);
free_tx_dma:
	FUNC13(sspi->tx_chan);
free_rx_dma:
	FUNC13(sspi->rx_chan);
free_master:
	FUNC23(master);

	return ret;
}