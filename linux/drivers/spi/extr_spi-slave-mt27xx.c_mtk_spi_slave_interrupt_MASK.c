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
typedef  int u32 ;
struct spi_transfer {int len; scalar_t__ rx_buf; int /*<<< orphan*/  rx_dma; int /*<<< orphan*/  tx_dma; scalar_t__ tx_buf; } ;
struct spi_controller {int /*<<< orphan*/  dev; } ;
struct mtk_spi_slave {int /*<<< orphan*/  xfer_done; struct spi_transfer* cur_transfer; scalar_t__ base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CMD_INVALID_ST ; 
 int DATA_DONE_ST ; 
 int DMA_DONE_ST ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RSTA_DONE_ST ; 
 scalar_t__ SPIS_IRQ_CLR_REG ; 
 scalar_t__ SPIS_IRQ_ST_REG ; 
 scalar_t__ SPIS_RX_DATA_REG ; 
 int SPIS_SOFT_RST ; 
 scalar_t__ SPIS_SOFT_RST_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_spi_slave*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_spi_slave*) ; 
 int FUNC7 (scalar_t__) ; 
 struct mtk_spi_slave* FUNC8 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct spi_controller *ctlr = dev_id;
	struct mtk_spi_slave *mdata = FUNC8(ctlr);
	struct spi_transfer *trans = mdata->cur_transfer;
	u32 int_status, reg_val, cnt, remainder;

	int_status = FUNC7(mdata->base + SPIS_IRQ_ST_REG);
	FUNC9(int_status, mdata->base + SPIS_IRQ_CLR_REG);

	if (!trans)
		return IRQ_NONE;

	if ((int_status & DMA_DONE_ST) &&
	    ((int_status & DATA_DONE_ST) ||
	    (int_status & RSTA_DONE_ST))) {
		FUNC9(SPIS_SOFT_RST, mdata->base + SPIS_SOFT_RST_REG);

		if (trans->tx_buf)
			FUNC2(mdata->dev, trans->tx_dma,
					 trans->len, DMA_TO_DEVICE);
		if (trans->rx_buf)
			FUNC2(mdata->dev, trans->rx_dma,
					 trans->len, DMA_FROM_DEVICE);

		FUNC5(mdata);
		FUNC6(mdata);
	}

	if ((!(int_status & DMA_DONE_ST)) &&
	    ((int_status & DATA_DONE_ST) ||
	    (int_status & RSTA_DONE_ST))) {
		cnt = trans->len / 4;
		if (trans->rx_buf)
			FUNC3(mdata->base + SPIS_RX_DATA_REG,
				     trans->rx_buf, cnt);
		remainder = trans->len % 4;
		if (trans->rx_buf && remainder > 0) {
			reg_val = FUNC7(mdata->base + SPIS_RX_DATA_REG);
			FUNC4(trans->rx_buf + (cnt * 4),
			       &reg_val, remainder);
		}

		FUNC6(mdata);
	}

	if (int_status & CMD_INVALID_ST) {
		FUNC1(&ctlr->dev, "cmd invalid\n");
		return IRQ_NONE;
	}

	mdata->cur_transfer = NULL;
	FUNC0(&mdata->xfer_done);

	return IRQ_HANDLED;
}