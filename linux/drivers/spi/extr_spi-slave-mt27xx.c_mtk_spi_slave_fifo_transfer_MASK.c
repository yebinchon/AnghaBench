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
struct spi_transfer {int len; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct mtk_spi_slave {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPIS_CFG_REG ; 
 int SPIS_RX_EN ; 
 int SPIS_SOFT_RST ; 
 scalar_t__ SPIS_SOFT_RST_REG ; 
 scalar_t__ SPIS_TX_DATA_REG ; 
 int SPIS_TX_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_spi_slave*) ; 
 int FUNC3 (struct mtk_spi_slave*) ; 
 int FUNC4 (scalar_t__) ; 
 struct mtk_spi_slave* FUNC5 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct spi_controller *ctlr,
				       struct spi_device *spi,
				       struct spi_transfer *xfer)
{
	struct mtk_spi_slave *mdata = FUNC5(ctlr);
	int reg_val, cnt, remainder, ret;

	FUNC6(SPIS_SOFT_RST, mdata->base + SPIS_SOFT_RST_REG);

	reg_val = FUNC4(mdata->base + SPIS_CFG_REG);
	if (xfer->rx_buf)
		reg_val |= SPIS_RX_EN;
	if (xfer->tx_buf)
		reg_val |= SPIS_TX_EN;
	FUNC6(reg_val, mdata->base + SPIS_CFG_REG);

	cnt = xfer->len / 4;
	if (xfer->tx_buf)
		FUNC0(mdata->base + SPIS_TX_DATA_REG,
			      xfer->tx_buf, cnt);

	remainder = xfer->len % 4;
	if (xfer->tx_buf && remainder > 0) {
		reg_val = 0;
		FUNC1(&reg_val, xfer->tx_buf + cnt * 4, remainder);
		FUNC6(reg_val, mdata->base + SPIS_TX_DATA_REG);
	}

	ret = FUNC3(mdata);
	if (ret) {
		FUNC2(mdata);
		FUNC6(SPIS_SOFT_RST, mdata->base + SPIS_SOFT_RST_REG);
	}

	return ret;
}