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
typedef  int u8 ;
typedef  int u32 ;
struct zynqmp_qspi {int genfifocs; int genfifobus; scalar_t__ mode; int dma_rx_bytes; int genfifoentry; int /*<<< orphan*/ * rxbuf; int /*<<< orphan*/ * txbuf; } ;
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int GQSPI_CFG_START_GEN_FIFO_MASK ; 
 int /*<<< orphan*/  GQSPI_CONFIG_OFST ; 
 int GQSPI_GENFIFO_EXP ; 
 int GQSPI_GENFIFO_EXP_START ; 
 int GQSPI_GENFIFO_IMM_DATA_MASK ; 
 int /*<<< orphan*/  GQSPI_GEN_FIFO_OFST ; 
 int GQSPI_IER_GENFIFOEMPTY_MASK ; 
 int /*<<< orphan*/  GQSPI_IER_OFST ; 
 int GQSPI_IER_RXEMPTY_MASK ; 
 int GQSPI_IER_RXNEMPTY_MASK ; 
 int GQSPI_IER_TXEMPTY_MASK ; 
 int GQSPI_IER_TXNOT_FULL_MASK ; 
 scalar_t__ GQSPI_MODE_DMA ; 
 scalar_t__ GQSPI_MODE_IO ; 
 int GQSPI_QSPIDMA_DST_I_EN_DONE_MASK ; 
 int /*<<< orphan*/  GQSPI_QSPIDMA_DST_I_EN_OFST ; 
 struct zynqmp_qspi* FUNC0 (struct spi_master*) ; 
 int FUNC1 (struct zynqmp_qspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zynqmp_qspi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct zynqmp_qspi*,struct spi_transfer*,int*) ; 

__attribute__((used)) static int FUNC5(struct spi_master *master,
				      struct spi_device *qspi,
				      struct spi_transfer *transfer)
{
	struct zynqmp_qspi *xqspi = FUNC0(master);
	u32 genfifoentry = 0x0, transfer_len;

	xqspi->txbuf = transfer->tx_buf;
	xqspi->rxbuf = transfer->rx_buf;

	FUNC3(qspi, transfer);

	genfifoentry |= xqspi->genfifocs;
	genfifoentry |= xqspi->genfifobus;

	FUNC4(xqspi, transfer, &genfifoentry);

	if (xqspi->mode == GQSPI_MODE_DMA)
		transfer_len = xqspi->dma_rx_bytes;
	else
		transfer_len = transfer->len;

	xqspi->genfifoentry = genfifoentry;
	if ((transfer_len) < GQSPI_GENFIFO_IMM_DATA_MASK) {
		genfifoentry &= ~GQSPI_GENFIFO_IMM_DATA_MASK;
		genfifoentry |= transfer_len;
		FUNC2(xqspi, GQSPI_GEN_FIFO_OFST, genfifoentry);
	} else {
		int tempcount = transfer_len;
		u32 exponent = 8;	/* 2^8 = 256 */
		u8 imm_data = tempcount & 0xFF;

		tempcount &= ~(tempcount & 0xFF);
		/* Immediate entry */
		if (tempcount != 0) {
			/* Exponent entries */
			genfifoentry |= GQSPI_GENFIFO_EXP;
			while (tempcount != 0) {
				if (tempcount & GQSPI_GENFIFO_EXP_START) {
					genfifoentry &=
					    ~GQSPI_GENFIFO_IMM_DATA_MASK;
					genfifoentry |= exponent;
					FUNC2(xqspi,
							   GQSPI_GEN_FIFO_OFST,
							   genfifoentry);
				}
				tempcount = tempcount >> 1;
				exponent++;
			}
		}
		if (imm_data != 0) {
			genfifoentry &= ~GQSPI_GENFIFO_EXP;
			genfifoentry &= ~GQSPI_GENFIFO_IMM_DATA_MASK;
			genfifoentry |= (u8) (imm_data & 0xFF);
			FUNC2(xqspi,
					   GQSPI_GEN_FIFO_OFST, genfifoentry);
		}
	}

	if ((xqspi->mode == GQSPI_MODE_IO) &&
			(xqspi->rxbuf != NULL)) {
		/* Dummy generic FIFO entry */
		FUNC2(xqspi, GQSPI_GEN_FIFO_OFST, 0x0);
	}

	/* Since we are using manual mode */
	FUNC2(xqspi, GQSPI_CONFIG_OFST,
			   FUNC1(xqspi, GQSPI_CONFIG_OFST) |
			   GQSPI_CFG_START_GEN_FIFO_MASK);

	if (xqspi->txbuf != NULL)
		/* Enable interrupts for TX */
		FUNC2(xqspi, GQSPI_IER_OFST,
				   GQSPI_IER_TXEMPTY_MASK |
					GQSPI_IER_GENFIFOEMPTY_MASK |
					GQSPI_IER_TXNOT_FULL_MASK);

	if (xqspi->rxbuf != NULL) {
		/* Enable interrupts for RX */
		if (xqspi->mode == GQSPI_MODE_DMA) {
			/* Enable DMA interrupts */
			FUNC2(xqspi,
					GQSPI_QSPIDMA_DST_I_EN_OFST,
					GQSPI_QSPIDMA_DST_I_EN_DONE_MASK);
		} else {
			FUNC2(xqspi, GQSPI_IER_OFST,
					GQSPI_IER_GENFIFOEMPTY_MASK |
					GQSPI_IER_RXNEMPTY_MASK |
					GQSPI_IER_RXEMPTY_MASK);
		}
	}

	return transfer->len;
}