#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct zynq_qspi {int* txbuf; int* rxbuf; int tx_bytes; int rx_bytes; int /*<<< orphan*/  data_completion; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {scalar_t__ in; scalar_t__ out; } ;
struct TYPE_12__ {int nbytes; scalar_t__ dir; TYPE_4__ buf; int /*<<< orphan*/  buswidth; } ;
struct TYPE_10__ {int nbytes; int /*<<< orphan*/  buswidth; } ;
struct TYPE_9__ {int nbytes; int val; int /*<<< orphan*/  buswidth; } ;
struct TYPE_8__ {int /*<<< orphan*/  opcode; int /*<<< orphan*/  buswidth; } ;
struct spi_mem_op {TYPE_5__ data; TYPE_3__ dummy; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct spi_mem {TYPE_6__* spi; } ;
struct TYPE_13__ {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SPI_MEM_DATA_OUT ; 
 int /*<<< orphan*/  ZYNQ_QSPI_FIFO_DEPTH ; 
 int /*<<< orphan*/  ZYNQ_QSPI_IEN_OFFSET ; 
 int /*<<< orphan*/  ZYNQ_QSPI_IXR_RXTX_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct zynq_qspi* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct zynq_qspi*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (struct zynq_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct zynq_qspi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct spi_mem *mem,
				 const struct spi_mem_op *op)
{
	struct zynq_qspi *xqspi = FUNC6(mem->spi->master);
	int err = 0, i;
	u8 *tmpbuf;

	FUNC0(xqspi->dev, "cmd:%#x mode:%d.%d.%d.%d\n",
		op->cmd.opcode, op->cmd.buswidth, op->addr.buswidth,
		op->dummy.buswidth, op->data.buswidth);

	FUNC8(mem->spi, true);
	FUNC9(xqspi, mem->spi);

	if (op->cmd.opcode) {
		FUNC5(&xqspi->data_completion);
		xqspi->txbuf = (u8 *)&op->cmd.opcode;
		xqspi->rxbuf = NULL;
		xqspi->tx_bytes = sizeof(op->cmd.opcode);
		xqspi->rx_bytes = sizeof(op->cmd.opcode);
		FUNC11(xqspi, ZYNQ_QSPI_FIFO_DEPTH, true);
		FUNC10(xqspi, ZYNQ_QSPI_IEN_OFFSET,
				ZYNQ_QSPI_IXR_RXTX_MASK);
		if (!FUNC7(&xqspi->data_completion,
							       FUNC4(1000)))
			err = -ETIMEDOUT;
	}

	if (op->addr.nbytes) {
		for (i = 0; i < op->addr.nbytes; i++) {
			xqspi->txbuf[i] = op->addr.val >>
					(8 * (op->addr.nbytes - i - 1));
		}

		FUNC5(&xqspi->data_completion);
		xqspi->rxbuf = NULL;
		xqspi->tx_bytes = op->addr.nbytes;
		xqspi->rx_bytes = op->addr.nbytes;
		FUNC11(xqspi, ZYNQ_QSPI_FIFO_DEPTH, true);
		FUNC10(xqspi, ZYNQ_QSPI_IEN_OFFSET,
				ZYNQ_QSPI_IXR_RXTX_MASK);
		if (!FUNC7(&xqspi->data_completion,
							       FUNC4(1000)))
			err = -ETIMEDOUT;
	}

	if (op->dummy.nbytes) {
		tmpbuf = FUNC2(op->dummy.nbytes, GFP_KERNEL);
		FUNC3(tmpbuf, 0xff, op->dummy.nbytes);
		FUNC5(&xqspi->data_completion);
		xqspi->txbuf = tmpbuf;
		xqspi->rxbuf = NULL;
		xqspi->tx_bytes = op->dummy.nbytes;
		xqspi->rx_bytes = op->dummy.nbytes;
		FUNC11(xqspi, ZYNQ_QSPI_FIFO_DEPTH, true);
		FUNC10(xqspi, ZYNQ_QSPI_IEN_OFFSET,
				ZYNQ_QSPI_IXR_RXTX_MASK);
		if (!FUNC7(&xqspi->data_completion,
							       FUNC4(1000)))
			err = -ETIMEDOUT;

		FUNC1(tmpbuf);
	}

	if (op->data.nbytes) {
		FUNC5(&xqspi->data_completion);
		if (op->data.dir == SPI_MEM_DATA_OUT) {
			xqspi->txbuf = (u8 *)op->data.buf.out;
			xqspi->tx_bytes = op->data.nbytes;
			xqspi->rxbuf = NULL;
			xqspi->rx_bytes = op->data.nbytes;
		} else {
			xqspi->txbuf = NULL;
			xqspi->rxbuf = (u8 *)op->data.buf.in;
			xqspi->rx_bytes = op->data.nbytes;
			xqspi->tx_bytes = op->data.nbytes;
		}

		FUNC11(xqspi, ZYNQ_QSPI_FIFO_DEPTH, true);
		FUNC10(xqspi, ZYNQ_QSPI_IEN_OFFSET,
				ZYNQ_QSPI_IXR_RXTX_MASK);
		if (!FUNC7(&xqspi->data_completion,
							       FUNC4(1000)))
			err = -ETIMEDOUT;
	}
	FUNC8(mem->spi, false);

	return err;
}