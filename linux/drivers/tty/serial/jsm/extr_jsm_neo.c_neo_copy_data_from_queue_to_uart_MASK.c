#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_8__ {TYPE_1__* state; } ;
struct jsm_channel {int ch_flags; int ch_cached_lsr; int ch_t_tlevel; TYPE_4__ uart_port; scalar_t__ ch_txcount; TYPE_3__* ch_neo_uart; TYPE_2__* ch_bd; } ;
struct circ_buf {size_t tail; int head; int /*<<< orphan*/ * buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  txrxburst; int /*<<< orphan*/  txrx; int /*<<< orphan*/  lsr; } ;
struct TYPE_6__ {int /*<<< orphan*/  pci_dev; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int CH_BREAK_SENDING ; 
 int CH_FIFO_ENABLED ; 
 int CH_STOP ; 
 int CH_TX_FIFO_EMPTY ; 
 int CH_TX_FIFO_LWM ; 
 int UART_17158_TX_FIFOSIZE ; 
 int UART_LSR_THRE ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct jsm_channel *ch)
{
	u16 head;
	u16 tail;
	int n;
	int s;
	int qlen;
	u32 len_written = 0;
	struct circ_buf *circ;

	if (!ch)
		return;

	circ = &ch->uart_port.state->xmit;

	/* No data to write to the UART */
	if (FUNC5(circ))
		return;

	/* If port is "stopped", don't send any data to the UART */
	if ((ch->ch_flags & CH_STOP) || (ch->ch_flags & CH_BREAK_SENDING))
		return;
	/*
	 * If FIFOs are disabled. Send data directly to txrx register
	 */
	if (!(ch->ch_flags & CH_FIFO_ENABLED)) {
		u8 lsrbits = FUNC3(&ch->ch_neo_uart->lsr);

		ch->ch_cached_lsr |= lsrbits;
		if (ch->ch_cached_lsr & UART_LSR_THRE) {
			ch->ch_cached_lsr &= ~(UART_LSR_THRE);

			FUNC7(circ->buf[circ->tail], &ch->ch_neo_uart->txrx);
			FUNC0(WRITE, &ch->ch_bd->pci_dev,
				"Tx data: %x\n", circ->buf[circ->tail]);
			circ->tail = (circ->tail + 1) & (UART_XMIT_SIZE - 1);
			ch->ch_txcount++;
		}
		return;
	}

	/*
	 * We have to do it this way, because of the EXAR TXFIFO count bug.
	 */
	if (!(ch->ch_flags & (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM)))
		return;

	n = UART_17158_TX_FIFOSIZE - ch->ch_t_tlevel;

	/* cache head and tail of queue */
	head = circ->head & (UART_XMIT_SIZE - 1);
	tail = circ->tail & (UART_XMIT_SIZE - 1);
	qlen = FUNC4(circ);

	/* Find minimum of the FIFO space, versus queue length */
	n = FUNC2(n, qlen);

	while (n > 0) {

		s = ((head >= tail) ? head : UART_XMIT_SIZE) - tail;
		s = FUNC2(s, n);

		if (s <= 0)
			break;

		FUNC1(&ch->ch_neo_uart->txrxburst, circ->buf + tail, s);
		/* Add and flip queue if needed */
		tail = (tail + s) & (UART_XMIT_SIZE - 1);
		n -= s;
		ch->ch_txcount += s;
		len_written += s;
	}

	/* Update the final tail */
	circ->tail = tail & (UART_XMIT_SIZE - 1);

	if (len_written >= ch->ch_t_tlevel)
		ch->ch_flags &= ~(CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);

	if (FUNC5(circ))
		FUNC6(&ch->uart_port);
}