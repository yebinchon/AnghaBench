#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_3__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct spi_transfer {int len; TYPE_2__ tx_sg; TYPE_1__ rx_sg; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  rx_buf; } ;
struct spi_device {size_t chip_select; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; scalar_t__ controller_data; } ;
struct dma_slave_config {int src_addr_width; int src_maxburst; int dst_addr_width; int dst_maxburst; scalar_t__ dst_addr; int /*<<< orphan*/  direction; int /*<<< orphan*/  src_addr; } ;
struct dma_async_tx_descriptor {void* callback_param; int /*<<< orphan*/  callback; } ;
struct davinci_spi_platform_data {scalar_t__ cshold_bug; } ;
struct davinci_spi_config {scalar_t__ io_type; } ;
struct davinci_spi {int* bytes_per_word; int wcount; int rcount; int (* get_tx ) (struct davinci_spi*) ;scalar_t__ base; int /*<<< orphan*/  done; int /*<<< orphan*/  dma_tx; int /*<<< orphan*/  dma_rx; scalar_t__ pbase; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; struct davinci_spi_platform_data pdata; } ;
typedef  int /*<<< orphan*/  rx_buf_count ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  SPIBUF ; 
 scalar_t__ SPIDAT1 ; 
 int SPIFLG_TIMEOUT_MASK ; 
 scalar_t__ SPIGCR1 ; 
 int /*<<< orphan*/  SPIGCR1_POWERDOWN_MASK ; 
 int /*<<< orphan*/  SPIGCR1_SPIENA_MASK ; 
 scalar_t__ SPIINT ; 
 int /*<<< orphan*/  SPIINT_DMA_REQ_EN ; 
 int /*<<< orphan*/  SPIINT_MASKALL ; 
 int /*<<< orphan*/  SPIINT_MASKINT ; 
 scalar_t__ SPI_IO_TYPE_POLL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct spi_device*,struct spi_transfer*) ; 
 int FUNC4 (struct davinci_spi*,int) ; 
 struct davinci_spi_config davinci_spi_default_cfg ; 
 int /*<<< orphan*/  davinci_spi_dma_rx_callback ; 
 int /*<<< orphan*/  davinci_spi_dma_tx_callback ; 
 int FUNC5 (struct davinci_spi*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC11 (struct dma_async_tx_descriptor*) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct davinci_spi* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct davinci_spi*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct spi_device *spi, struct spi_transfer *t)
{
	struct davinci_spi *dspi;
	int data_type, ret = -ENOMEM;
	u32 tx_data, spidat1;
	u32 errors = 0;
	struct davinci_spi_config *spicfg;
	struct davinci_spi_platform_data *pdata;
	unsigned FUNC21(rx_buf_count);

	dspi = FUNC17(spi->master);
	pdata = &dspi->pdata;
	spicfg = (struct davinci_spi_config *)spi->controller_data;
	if (!spicfg)
		spicfg = &davinci_spi_default_cfg;

	/* convert len to words based on bits_per_word */
	data_type = dspi->bytes_per_word[spi->chip_select];

	dspi->tx = t->tx_buf;
	dspi->rx = t->rx_buf;
	dspi->wcount = t->len / data_type;
	dspi->rcount = dspi->wcount;

	spidat1 = FUNC12(dspi->base + SPIDAT1);

	FUNC1(dspi->base + SPIGCR1, SPIGCR1_POWERDOWN_MASK);
	FUNC16(dspi->base + SPIGCR1, SPIGCR1_SPIENA_MASK);

	FUNC15(&dspi->done);

	if (!FUNC3(spi->master, spi, t)) {
		if (spicfg->io_type != SPI_IO_TYPE_POLL)
			FUNC16(dspi->base + SPIINT, SPIINT_MASKINT);
		/* start the transfer */
		dspi->wcount--;
		tx_data = dspi->get_tx(dspi);
		spidat1 &= 0xFFFF0000;
		spidat1 |= tx_data & 0xFFFF;
		FUNC14(spidat1, dspi->base + SPIDAT1);
	} else {
		struct dma_slave_config dma_rx_conf = {
			.direction = DMA_DEV_TO_MEM,
			.src_addr = (unsigned long)dspi->pbase + SPIBUF,
			.src_addr_width = data_type,
			.src_maxburst = 1,
		};
		struct dma_slave_config dma_tx_conf = {
			.direction = DMA_MEM_TO_DEV,
			.dst_addr = (unsigned long)dspi->pbase + SPIDAT1,
			.dst_addr_width = data_type,
			.dst_maxburst = 1,
		};
		struct dma_async_tx_descriptor *rxdesc;
		struct dma_async_tx_descriptor *txdesc;

		FUNC10(dspi->dma_rx, &dma_rx_conf);
		FUNC10(dspi->dma_tx, &dma_tx_conf);

		rxdesc = FUNC9(dspi->dma_rx,
				t->rx_sg.sgl, t->rx_sg.nents, DMA_DEV_TO_MEM,
				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
		if (!rxdesc)
			goto err_desc;

		if (!t->tx_buf) {
			/* To avoid errors when doing rx-only transfers with
			 * many SG entries (> 20), use the rx buffer as the
			 * dummy tx buffer so that dma reloads are done at the
			 * same time for rx and tx.
			 */
			t->tx_sg.sgl = t->rx_sg.sgl;
			t->tx_sg.nents = t->rx_sg.nents;
		}

		txdesc = FUNC9(dspi->dma_tx,
				t->tx_sg.sgl, t->tx_sg.nents, DMA_MEM_TO_DEV,
				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
		if (!txdesc)
			goto err_desc;

		rxdesc->callback = davinci_spi_dma_rx_callback;
		rxdesc->callback_param = (void *)dspi;
		txdesc->callback = davinci_spi_dma_tx_callback;
		txdesc->callback_param = (void *)dspi;

		if (pdata->cshold_bug)
			FUNC13(spidat1 >> 16, dspi->base + SPIDAT1 + 2);

		FUNC11(rxdesc);
		FUNC11(txdesc);

		FUNC8(dspi->dma_rx);
		FUNC8(dspi->dma_tx);

		FUNC16(dspi->base + SPIINT, SPIINT_DMA_REQ_EN);
	}

	/* Wait for the transfer to complete */
	if (spicfg->io_type != SPI_IO_TYPE_POLL) {
		if (FUNC19(&dspi->done, HZ) == 0)
			errors = SPIFLG_TIMEOUT_MASK;
	} else {
		while (dspi->rcount > 0 || dspi->wcount > 0) {
			errors = FUNC5(dspi);
			if (errors)
				break;
			FUNC2();
		}
	}

	FUNC1(dspi->base + SPIINT, SPIINT_MASKALL);
	if (FUNC3(spi->master, spi, t))
		FUNC1(dspi->base + SPIINT, SPIINT_DMA_REQ_EN);

	FUNC1(dspi->base + SPIGCR1, SPIGCR1_SPIENA_MASK);
	FUNC16(dspi->base + SPIGCR1, SPIGCR1_POWERDOWN_MASK);

	/*
	 * Check for bit error, desync error,parity error,timeout error and
	 * receive overflow errors
	 */
	if (errors) {
		ret = FUNC4(dspi, errors);
		FUNC0(!ret, "%s: error reported but no error found!\n",
							FUNC7(&spi->dev));
		return ret;
	}

	if (dspi->rcount != 0 || dspi->wcount != 0) {
		FUNC6(&spi->dev, "SPI data transfer error\n");
		return -EIO;
	}

	return t->len;

err_desc:
	return ret;
}