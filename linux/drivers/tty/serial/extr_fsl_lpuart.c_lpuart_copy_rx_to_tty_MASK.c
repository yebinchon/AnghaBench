#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int dummy; } ;
struct TYPE_7__ {int rx; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_2__ icount; scalar_t__ membase; TYPE_1__* state; } ;
struct TYPE_9__ {scalar_t__ length; } ;
struct circ_buf {scalar_t__ head; scalar_t__ tail; int buf; } ;
struct lpuart_port {scalar_t__ dma_rx_timeout; int /*<<< orphan*/  lpuart_timer; TYPE_3__ port; TYPE_4__ rx_sgl; int /*<<< orphan*/  dma_rx_cookie; int /*<<< orphan*/  dma_rx_chan; int /*<<< orphan*/  dma_rx_desc; struct circ_buf rx_ring; } ;
struct dma_tx_state {scalar_t__ residue; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_6__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_ERROR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ UARTCFIFO ; 
 unsigned char UARTCFIFO_RXFLUSH ; 
 scalar_t__ UARTCR2 ; 
 unsigned char UARTCR2_RE ; 
 int /*<<< orphan*/  UARTDATA ; 
 scalar_t__ UARTDR ; 
 scalar_t__ UARTSFIFO ; 
 int UARTSFIFO_RXUF ; 
 scalar_t__ UARTSR1 ; 
 unsigned char UARTSR1_FE ; 
 unsigned char UARTSR1_PE ; 
 int /*<<< orphan*/  UARTSTAT ; 
 unsigned long UARTSTAT_FE ; 
 unsigned long UARTSTAT_PE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 scalar_t__ jiffies ; 
 unsigned long FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct lpuart_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_port*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct lpuart_port *sport)
{
	struct tty_port *port = &sport->port.state->port;
	struct dma_tx_state state;
	enum dma_status dmastat;
	struct circ_buf *ring = &sport->rx_ring;
	unsigned long flags;
	int count = 0;

	if (FUNC7(sport)) {
		unsigned long sr = FUNC6(&sport->port, UARTSTAT);

		if (sr & (UARTSTAT_PE | UARTSTAT_FE)) {
			/* Read DR to clear the error flags */
			FUNC6(&sport->port, UARTDATA);

			if (sr & UARTSTAT_PE)
				sport->port.icount.parity++;
			else if (sr & UARTSTAT_FE)
				sport->port.icount.frame++;
		}
	} else {
		unsigned char sr = FUNC9(sport->port.membase + UARTSR1);

		if (sr & (UARTSR1_PE | UARTSR1_FE)) {
			unsigned char cr2;

			/* Disable receiver during this operation... */
			cr2 = FUNC9(sport->port.membase + UARTCR2);
			cr2 &= ~UARTCR2_RE;
			FUNC14(cr2, sport->port.membase + UARTCR2);

			/* Read DR to clear the error flags */
			FUNC9(sport->port.membase + UARTDR);

			if (sr & UARTSR1_PE)
				sport->port.icount.parity++;
			else if (sr & UARTSR1_FE)
				sport->port.icount.frame++;
			/*
			 * At this point parity/framing error is
			 * cleared However, since the DMA already read
			 * the data register and we had to read it
			 * again after reading the status register to
			 * properly clear the flags, the FIFO actually
			 * underflowed... This requires a clearing of
			 * the FIFO...
			 */
			if (FUNC9(sport->port.membase + UARTSFIFO) &
			    UARTSFIFO_RXUF) {
				FUNC14(UARTSFIFO_RXUF,
				       sport->port.membase + UARTSFIFO);
				FUNC14(UARTCFIFO_RXFLUSH,
				       sport->port.membase + UARTCFIFO);
			}

			cr2 |= UARTCR2_RE;
			FUNC14(cr2, sport->port.membase + UARTCR2);
		}
	}

	FUNC1(sport->dma_rx_desc);

	FUNC10(&sport->port.lock, flags);

	dmastat = FUNC5(sport->dma_rx_chan,
				sport->dma_rx_cookie,
				&state);

	if (dmastat == DMA_ERROR) {
		FUNC2(sport->port.dev, "Rx DMA transfer failed!\n");
		FUNC11(&sport->port.lock, flags);
		return;
	}

	/* CPU claims ownership of RX DMA buffer */
	FUNC3(sport->port.dev, &sport->rx_sgl, 1, DMA_FROM_DEVICE);

	/*
	 * ring->head points to the end of data already written by the DMA.
	 * ring->tail points to the beginning of data to be read by the
	 * framework.
	 * The current transfer size should not be larger than the dma buffer
	 * length.
	 */
	ring->head = sport->rx_sgl.length - state.residue;
	FUNC0(ring->head > sport->rx_sgl.length);
	/*
	 * At this point ring->head may point to the first byte right after the
	 * last byte of the dma buffer:
	 * 0 <= ring->head <= sport->rx_sgl.length
	 *
	 * However ring->tail must always points inside the dma buffer:
	 * 0 <= ring->tail <= sport->rx_sgl.length - 1
	 *
	 * Since we use a ring buffer, we have to handle the case
	 * where head is lower than tail. In such a case, we first read from
	 * tail to the end of the buffer then reset tail.
	 */
	if (ring->head < ring->tail) {
		count = sport->rx_sgl.length - ring->tail;

		FUNC13(port, ring->buf + ring->tail, count);
		ring->tail = 0;
		sport->port.icount.rx += count;
	}

	/* Finally we read data from tail to head */
	if (ring->tail < ring->head) {
		count = ring->head - ring->tail;
		FUNC13(port, ring->buf + ring->tail, count);
		/* Wrap ring->head if needed */
		if (ring->head >= sport->rx_sgl.length)
			ring->head = 0;
		ring->tail = ring->head;
		sport->port.icount.rx += count;
	}

	FUNC4(sport->port.dev, &sport->rx_sgl, 1,
			       DMA_FROM_DEVICE);

	FUNC11(&sport->port.lock, flags);

	FUNC12(port);
	FUNC8(&sport->lpuart_timer, jiffies + sport->dma_rx_timeout);
}