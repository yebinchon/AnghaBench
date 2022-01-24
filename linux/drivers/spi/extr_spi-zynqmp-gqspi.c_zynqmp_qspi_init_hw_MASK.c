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
struct zynqmp_qspi {int dummy; } ;

/* Variables and functions */
 int GQSPI_CFG_BAUD_RATE_DIV_MASK ; 
 int GQSPI_CFG_CLK_PHA_MASK ; 
 int GQSPI_CFG_CLK_POL_MASK ; 
 int GQSPI_CFG_ENDIAN_MASK ; 
 int GQSPI_CFG_EN_POLL_TO_MASK ; 
 int GQSPI_CFG_GEN_FIFO_START_MODE_MASK ; 
 int GQSPI_CFG_MODE_EN_MASK ; 
 int GQSPI_CFG_WP_HOLD_MASK ; 
 int /*<<< orphan*/  GQSPI_CONFIG_OFST ; 
 int GQSPI_EN_MASK ; 
 int /*<<< orphan*/  GQSPI_EN_OFST ; 
 int /*<<< orphan*/  GQSPI_FIFO_CTRL_OFST ; 
 int GQSPI_FIFO_CTRL_RST_GEN_FIFO_MASK ; 
 int GQSPI_FIFO_CTRL_RST_RX_FIFO_MASK ; 
 int GQSPI_FIFO_CTRL_RST_TX_FIFO_MASK ; 
 int GQSPI_GEN_FIFO_THRESHOLD_RESET_VAL ; 
 int /*<<< orphan*/  GQSPI_GF_THRESHOLD_OFST ; 
 int GQSPI_IDR_ALL_MASK ; 
 int /*<<< orphan*/  GQSPI_IDR_OFST ; 
 int /*<<< orphan*/  GQSPI_ISR_OFST ; 
 int GQSPI_ISR_WR_TO_CLR_MASK ; 
 int /*<<< orphan*/  GQSPI_LPBK_DLY_ADJ_OFST ; 
 int GQSPI_LPBK_DLY_ADJ_USE_LPBK_MASK ; 
 int /*<<< orphan*/  GQSPI_QSPIDMA_DST_CTRL_OFST ; 
 int GQSPI_QSPIDMA_DST_CTRL_RESET_VAL ; 
 int GQSPI_QSPIDMA_DST_INTR_ALL_MASK ; 
 int /*<<< orphan*/  GQSPI_QSPIDMA_DST_I_DIS_OFST ; 
 int /*<<< orphan*/  GQSPI_QSPIDMA_DST_I_STS_OFST ; 
 int /*<<< orphan*/  GQSPI_QSPIDMA_DST_STS_OFST ; 
 int GQSPI_QSPIDMA_DST_STS_WTC ; 
 int GQSPI_RX_FIFO_THRESHOLD ; 
 int /*<<< orphan*/  GQSPI_RX_THRESHOLD_OFST ; 
 int /*<<< orphan*/  GQSPI_SELECT_FLASH_BUS_LOWER ; 
 int /*<<< orphan*/  GQSPI_SELECT_FLASH_CS_LOWER ; 
 int GQSPI_SEL_MASK ; 
 int /*<<< orphan*/  GQSPI_SEL_OFST ; 
 int GQSPI_TX_FIFO_THRESHOLD_RESET_VAL ; 
 int /*<<< orphan*/  GQSPI_TX_THRESHOLD_OFST ; 
 int FUNC0 (struct zynqmp_qspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zynqmp_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zynqmp_qspi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct zynqmp_qspi *xqspi)
{
	u32 config_reg;

	/* Select the GQSPI mode */
	FUNC2(xqspi, GQSPI_SEL_OFST, GQSPI_SEL_MASK);
	/* Clear and disable interrupts */
	FUNC2(xqspi, GQSPI_ISR_OFST,
			   FUNC0(xqspi, GQSPI_ISR_OFST) |
			   GQSPI_ISR_WR_TO_CLR_MASK);
	/* Clear the DMA STS */
	FUNC2(xqspi, GQSPI_QSPIDMA_DST_I_STS_OFST,
			   FUNC0(xqspi,
					     GQSPI_QSPIDMA_DST_I_STS_OFST));
	FUNC2(xqspi, GQSPI_QSPIDMA_DST_STS_OFST,
			   FUNC0(xqspi,
					     GQSPI_QSPIDMA_DST_STS_OFST) |
					     GQSPI_QSPIDMA_DST_STS_WTC);
	FUNC2(xqspi, GQSPI_IDR_OFST, GQSPI_IDR_ALL_MASK);
	FUNC2(xqspi,
			   GQSPI_QSPIDMA_DST_I_DIS_OFST,
			   GQSPI_QSPIDMA_DST_INTR_ALL_MASK);
	/* Disable the GQSPI */
	FUNC2(xqspi, GQSPI_EN_OFST, 0x0);
	config_reg = FUNC0(xqspi, GQSPI_CONFIG_OFST);
	config_reg &= ~GQSPI_CFG_MODE_EN_MASK;
	/* Manual start */
	config_reg |= GQSPI_CFG_GEN_FIFO_START_MODE_MASK;
	/* Little endian by default */
	config_reg &= ~GQSPI_CFG_ENDIAN_MASK;
	/* Disable poll time out */
	config_reg &= ~GQSPI_CFG_EN_POLL_TO_MASK;
	/* Set hold bit */
	config_reg |= GQSPI_CFG_WP_HOLD_MASK;
	/* Clear pre-scalar by default */
	config_reg &= ~GQSPI_CFG_BAUD_RATE_DIV_MASK;
	/* CPHA 0 */
	config_reg &= ~GQSPI_CFG_CLK_PHA_MASK;
	/* CPOL 0 */
	config_reg &= ~GQSPI_CFG_CLK_POL_MASK;
	FUNC2(xqspi, GQSPI_CONFIG_OFST, config_reg);

	/* Clear the TX and RX FIFO */
	FUNC2(xqspi, GQSPI_FIFO_CTRL_OFST,
			   GQSPI_FIFO_CTRL_RST_RX_FIFO_MASK |
			   GQSPI_FIFO_CTRL_RST_TX_FIFO_MASK |
			   GQSPI_FIFO_CTRL_RST_GEN_FIFO_MASK);
	/* Set by default to allow for high frequencies */
	FUNC2(xqspi, GQSPI_LPBK_DLY_ADJ_OFST,
			   FUNC0(xqspi, GQSPI_LPBK_DLY_ADJ_OFST) |
			   GQSPI_LPBK_DLY_ADJ_USE_LPBK_MASK);
	/* Reset thresholds */
	FUNC2(xqspi, GQSPI_TX_THRESHOLD_OFST,
			   GQSPI_TX_FIFO_THRESHOLD_RESET_VAL);
	FUNC2(xqspi, GQSPI_RX_THRESHOLD_OFST,
			   GQSPI_RX_FIFO_THRESHOLD);
	FUNC2(xqspi, GQSPI_GF_THRESHOLD_OFST,
			   GQSPI_GEN_FIFO_THRESHOLD_RESET_VAL);
	FUNC1(xqspi,
				 GQSPI_SELECT_FLASH_CS_LOWER,
				 GQSPI_SELECT_FLASH_BUS_LOWER);
	/* Initialize DMA */
	FUNC2(xqspi,
			GQSPI_QSPIDMA_DST_CTRL_OFST,
			GQSPI_QSPIDMA_DST_CTRL_RESET_VAL);

	/* Enable the GQSPI */
	FUNC2(xqspi, GQSPI_EN_OFST, GQSPI_EN_MASK);
}