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
struct zynqmp_qspi {scalar_t__ mode; scalar_t__ bytes_to_receive; scalar_t__ bytes_to_transfer; } ;
struct spi_master {int dummy; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  GQSPI_IDR_OFST ; 
 int GQSPI_IER_GENFIFOEMPTY_MASK ; 
 int GQSPI_IER_RXEMPTY_MASK ; 
 int /*<<< orphan*/  GQSPI_IMASK_OFST ; 
 int GQSPI_IRQ_MASK ; 
 int GQSPI_ISR_IDR_MASK ; 
 int /*<<< orphan*/  GQSPI_ISR_OFST ; 
 int GQSPI_ISR_TXNOT_FULL_MASK ; 
 scalar_t__ GQSPI_MODE_DMA ; 
 int GQSPI_QSPIDMA_DST_I_STS_DONE_MASK ; 
 int /*<<< orphan*/  GQSPI_QSPIDMA_DST_I_STS_OFST ; 
 int /*<<< orphan*/  GQSPI_RX_FIFO_FILL ; 
 int /*<<< orphan*/  GQSPI_TX_FIFO_FILL ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct spi_master*) ; 
 struct zynqmp_qspi* FUNC1 (struct spi_master*) ; 
 int FUNC2 (struct zynqmp_qspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zynqmp_qspi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zynqmp_qspi*) ; 
 int /*<<< orphan*/  FUNC5 (struct zynqmp_qspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zynqmp_qspi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct spi_master *master = dev_id;
	struct zynqmp_qspi *xqspi = FUNC1(master);
	int ret = IRQ_NONE;
	u32 status, mask, dma_status = 0;

	status = FUNC2(xqspi, GQSPI_ISR_OFST);
	FUNC3(xqspi, GQSPI_ISR_OFST, status);
	mask = (status & ~(FUNC2(xqspi, GQSPI_IMASK_OFST)));

	/* Read and clear DMA status */
	if (xqspi->mode == GQSPI_MODE_DMA) {
		dma_status =
			FUNC2(xqspi, GQSPI_QSPIDMA_DST_I_STS_OFST);
		FUNC3(xqspi, GQSPI_QSPIDMA_DST_I_STS_OFST,
								dma_status);
	}

	if (mask & GQSPI_ISR_TXNOT_FULL_MASK) {
		FUNC5(xqspi, GQSPI_TX_FIFO_FILL);
		ret = IRQ_HANDLED;
	}

	if (dma_status & GQSPI_QSPIDMA_DST_I_STS_DONE_MASK) {
		FUNC4(xqspi);
		ret = IRQ_HANDLED;
	} else if (!(mask & GQSPI_IER_RXEMPTY_MASK) &&
			(mask & GQSPI_IER_GENFIFOEMPTY_MASK)) {
		FUNC6(xqspi, GQSPI_RX_FIFO_FILL);
		ret = IRQ_HANDLED;
	}

	if ((xqspi->bytes_to_receive == 0) && (xqspi->bytes_to_transfer == 0)
			&& ((status & GQSPI_IRQ_MASK) == GQSPI_IRQ_MASK)) {
		FUNC3(xqspi, GQSPI_IDR_OFST, GQSPI_ISR_IDR_MASK);
		FUNC0(master);
		ret = IRQ_HANDLED;
	}
	return ret;
}