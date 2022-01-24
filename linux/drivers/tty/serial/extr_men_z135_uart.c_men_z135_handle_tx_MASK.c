#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int tx; } ;
struct uart_port {TYPE_3__ icount; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct men_z135_port {TYPE_2__* mdev; struct uart_port port; } ;
struct circ_buf {int head; int tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MEN_Z135_CONF_REG ; 
 int MEN_Z135_FIFO_WATERMARK ; 
 int /*<<< orphan*/  MEN_Z135_IER_TXCIEN ; 
 scalar_t__ MEN_Z135_TX_CTRL ; 
 scalar_t__ MEN_Z135_TX_RAM ; 
 int UART_XMIT_SIZE ; 
 int WAKEUP_CHARS ; 
 scalar_t__ align ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct men_z135_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct men_z135_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (struct circ_buf*) ; 
 scalar_t__ FUNC9 (struct circ_buf*) ; 
 scalar_t__ FUNC10 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*) ; 

__attribute__((used)) static void FUNC12(struct men_z135_port *uart)
{
	struct uart_port *port = &uart->port;
	struct circ_buf *xmit = &port->state->xmit;
	u32 txc;
	u32 wptr;
	int qlen;
	int n;
	int txfree;
	int head;
	int tail;
	int s;

	if (FUNC9(xmit))
		goto out;

	if (FUNC10(port))
		goto out;

	if (port->x_char)
		goto out;

	/* calculate bytes to copy */
	qlen = FUNC8(xmit);
	if (qlen <= 0)
		goto out;

	wptr = FUNC2(port->membase + MEN_Z135_TX_CTRL);
	txc = (wptr >> 16) & 0x3ff;
	wptr &= 0x3ff;

	if (txc > MEN_Z135_FIFO_WATERMARK)
		txc = MEN_Z135_FIFO_WATERMARK;

	txfree = MEN_Z135_FIFO_WATERMARK - txc;
	if (txfree <= 0) {
		FUNC1(&uart->mdev->dev,
			"Not enough room in TX FIFO have %d, need %d\n",
			txfree, qlen);
		goto irq_en;
	}

	/* if we're not aligned, it's better to copy only 1 or 2 bytes and
	 * then the rest.
	 */
	if (align && qlen >= 3 && FUNC0(wptr))
		n = 4 - FUNC0(wptr);
	else if (qlen > txfree)
		n = txfree;
	else
		n = qlen;

	if (n <= 0)
		goto irq_en;

	head = xmit->head & (UART_XMIT_SIZE - 1);
	tail = xmit->tail & (UART_XMIT_SIZE - 1);

	s = ((head >= tail) ? head : UART_XMIT_SIZE) - tail;
	n = FUNC7(n, s);

	FUNC4(port->membase + MEN_Z135_TX_RAM, &xmit->buf[xmit->tail], n);
	xmit->tail = (xmit->tail + n) & (UART_XMIT_SIZE - 1);

	FUNC3(n & 0x3ff, port->membase + MEN_Z135_TX_CTRL);

	port->icount.tx += n;

	if (FUNC8(xmit) < WAKEUP_CHARS)
		FUNC11(port);

irq_en:
	if (!FUNC9(xmit))
		FUNC6(uart, MEN_Z135_CONF_REG, MEN_Z135_IER_TXCIEN);
	else
		FUNC5(uart, MEN_Z135_CONF_REG, MEN_Z135_IER_TXCIEN);

out:
	return;

}