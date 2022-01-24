#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spi_transfer {int tx_dma; int len; void* rx_buf; int rx_dma; scalar_t__ tx_buf; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct mtk_spi_slave {scalar_t__ base; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int RX_DMA_EN ; 
 scalar_t__ SPIS_CFG_REG ; 
 int SPIS_DMA_ADDR_EN ; 
 scalar_t__ SPIS_DMA_CFG_REG ; 
 scalar_t__ SPIS_RX_DST_REG ; 
 int SPIS_RX_EN ; 
 int SPIS_SOFT_RST ; 
 scalar_t__ SPIS_SOFT_RST_REG ; 
 int SPIS_TX_EN ; 
 scalar_t__ SPIS_TX_SRC_REG ; 
 int TX_DMA_EN ; 
 int TX_DMA_LEN ; 
 int TX_DMA_TRIG_EN ; 
 void* FUNC0 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_spi_slave*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_spi_slave*) ; 
 int FUNC5 (struct mtk_spi_slave*) ; 
 int FUNC6 (scalar_t__) ; 
 struct mtk_spi_slave* FUNC7 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct spi_controller *ctlr,
				      struct spi_device *spi,
				      struct spi_transfer *xfer)
{
	struct mtk_spi_slave *mdata = FUNC7(ctlr);
	struct device *dev = mdata->dev;
	int reg_val, ret;

	FUNC8(SPIS_SOFT_RST, mdata->base + SPIS_SOFT_RST_REG);

	if (xfer->tx_buf) {
		/* tx_buf is a const void* where we need a void * for
		 * the dma mapping
		 */
		void *nonconst_tx = (void *)xfer->tx_buf;

		xfer->tx_dma = FUNC0(dev, nonconst_tx,
					      xfer->len, DMA_TO_DEVICE);
		if (FUNC1(dev, xfer->tx_dma)) {
			ret = -ENOMEM;
			goto disable_transfer;
		}
	}

	if (xfer->rx_buf) {
		xfer->rx_dma = FUNC0(dev, xfer->rx_buf,
					      xfer->len, DMA_FROM_DEVICE);
		if (FUNC1(dev, xfer->rx_dma)) {
			ret = -ENOMEM;
			goto unmap_txdma;
		}
	}

	FUNC8(xfer->tx_dma, mdata->base + SPIS_TX_SRC_REG);
	FUNC8(xfer->rx_dma, mdata->base + SPIS_RX_DST_REG);

	FUNC8(SPIS_DMA_ADDR_EN, mdata->base + SPIS_SOFT_RST_REG);

	/* enable config reg tx rx_enable */
	reg_val = FUNC6(mdata->base + SPIS_CFG_REG);
	if (xfer->tx_buf)
		reg_val |= SPIS_TX_EN;
	if (xfer->rx_buf)
		reg_val |= SPIS_RX_EN;
	FUNC8(reg_val, mdata->base + SPIS_CFG_REG);

	/* config dma */
	reg_val = 0;
	reg_val |= (xfer->len - 1) & TX_DMA_LEN;
	FUNC8(reg_val, mdata->base + SPIS_DMA_CFG_REG);

	reg_val = FUNC6(mdata->base + SPIS_DMA_CFG_REG);
	if (xfer->tx_buf)
		reg_val |= TX_DMA_EN;
	if (xfer->rx_buf)
		reg_val |= RX_DMA_EN;
	reg_val |= TX_DMA_TRIG_EN;
	FUNC8(reg_val, mdata->base + SPIS_DMA_CFG_REG);

	ret = FUNC5(mdata);
	if (ret)
		goto unmap_rxdma;

	return 0;

unmap_rxdma:
	if (xfer->rx_buf)
		FUNC2(dev, xfer->rx_dma,
				 xfer->len, DMA_FROM_DEVICE);

unmap_txdma:
	if (xfer->tx_buf)
		FUNC2(dev, xfer->tx_dma,
				 xfer->len, DMA_TO_DEVICE);

disable_transfer:
	FUNC3(mdata);
	FUNC4(mdata);
	FUNC8(SPIS_SOFT_RST, mdata->base + SPIS_SOFT_RST_REG);

	return ret;
}