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
struct zynq_qspi {int rx_bytes; int tx_bytes; scalar_t__ regs; scalar_t__ rxbuf; } ;

/* Variables and functions */
 scalar_t__ ZYNQ_QSPI_RXD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct zynq_qspi*,int) ; 

__attribute__((used)) static void FUNC3(struct zynq_qspi *xqspi, int rxcount)
{
	int count, len, k;

	len = xqspi->rx_bytes - xqspi->tx_bytes;
	count = len / 4;
	if (count > rxcount)
		count = rxcount;
	if (xqspi->rxbuf) {
		FUNC0(xqspi->regs + ZYNQ_QSPI_RXD_OFFSET,
			     xqspi->rxbuf, count);
		xqspi->rxbuf += count * 4;
	} else {
		for (k = 0; k < count; k++)
			FUNC1(xqspi->regs + ZYNQ_QSPI_RXD_OFFSET);
	}
	xqspi->rx_bytes -= count * 4;
	len -= count * 4;

	if (len && len < 4 && count < rxcount)
		FUNC2(xqspi, len);
}