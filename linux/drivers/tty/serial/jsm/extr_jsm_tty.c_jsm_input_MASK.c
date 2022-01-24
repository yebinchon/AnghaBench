#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct tty_struct {int dummy; } ;
struct tty_port {struct tty_struct* tty; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct jsm_channel {int ch_r_head; int ch_r_tail; int ch_flags; int* ch_equeue; int ch_e_tail; struct jsm_board* ch_bd; int /*<<< orphan*/  ch_lock; int /*<<< orphan*/ * ch_rqueue; int /*<<< orphan*/  ch_portnum; TYPE_2__ uart_port; } ;
struct jsm_board {int /*<<< orphan*/  pci_dev; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int CH_STOPI ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  IOCTL ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  READ ; 
 int RQUEUEMASK ; 
 int RQUEUESIZE ; 
 int /*<<< orphan*/  TTY_BREAK ; 
 int /*<<< orphan*/  TTY_FRAME ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  TTY_PARITY ; 
 int UART_LSR_BI ; 
 int UART_LSR_FE ; 
 int UART_LSR_PE ; 
 int /*<<< orphan*/  FUNC4 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_port*,int /*<<< orphan*/ *,int) ; 

void FUNC13(struct jsm_channel *ch)
{
	struct jsm_board *bd;
	struct tty_struct *tp;
	struct tty_port *port;
	u32 rmask;
	u16 head;
	u16 tail;
	int data_len;
	unsigned long lock_flags;
	int len = 0;
	int s = 0;
	int i = 0;

	FUNC5(READ, &ch->ch_bd->pci_dev, "start\n");

	port = &ch->uart_port.state->port;
	tp = port->tty;

	bd = ch->ch_bd;
	if (!bd)
		return;

	FUNC7(&ch->ch_lock, lock_flags);

	/*
	 *Figure the number of characters in the buffer.
	 *Exit immediately if none.
	 */

	rmask = RQUEUEMASK;

	head = ch->ch_r_head & rmask;
	tail = ch->ch_r_tail & rmask;

	data_len = (head - tail) & rmask;
	if (data_len == 0) {
		FUNC8(&ch->ch_lock, lock_flags);
		return;
	}

	FUNC5(READ, &ch->ch_bd->pci_dev, "start\n");

	/*
	 *If the device is not open, or CREAD is off, flush
	 *input data and return immediately.
	 */
	if (!tp || !FUNC0(tp)) {

		FUNC5(READ, &ch->ch_bd->pci_dev,
			"input. dropping %d bytes on port %d...\n",
			data_len, ch->ch_portnum);
		ch->ch_r_head = tail;

		/* Force queue flow control to be released, if needed */
		FUNC4(ch);

		FUNC8(&ch->ch_lock, lock_flags);
		return;
	}

	/*
	 * If we are throttled, simply don't read any data.
	 */
	if (ch->ch_flags & CH_STOPI) {
		FUNC8(&ch->ch_lock, lock_flags);
		FUNC5(READ, &ch->ch_bd->pci_dev,
			"Port %d throttled, not reading any data. head: %x tail: %x\n",
			ch->ch_portnum, head, tail);
		return;
	}

	FUNC5(READ, &ch->ch_bd->pci_dev, "start 2\n");

	len = FUNC9(port, data_len);

	/*
	 * len now contains the most amount of data we can copy,
	 * bounded either by the flip buffer size or the amount
	 * of data the card actually has pending...
	 */
	while (len) {
		s = ((head >= tail) ? head : RQUEUESIZE) - tail;
		s = FUNC6(s, len);

		if (s <= 0)
			break;

			/*
			 * If conditions are such that ld needs to see all
			 * UART errors, we will have to walk each character
			 * and error byte and send them to the buffer one at
			 * a time.
			 */

		if (FUNC3(tp) || FUNC1(tp) || FUNC2(tp)) {
			for (i = 0; i < s; i++) {
				/*
				 * Give the Linux ld the flags in the
				 * format it likes.
				 */
				if (*(ch->ch_equeue +tail +i) & UART_LSR_BI)
					FUNC11(port, *(ch->ch_rqueue +tail +i),  TTY_BREAK);
				else if (*(ch->ch_equeue +tail +i) & UART_LSR_PE)
					FUNC11(port, *(ch->ch_rqueue +tail +i), TTY_PARITY);
				else if (*(ch->ch_equeue +tail +i) & UART_LSR_FE)
					FUNC11(port, *(ch->ch_rqueue +tail +i), TTY_FRAME);
				else
					FUNC11(port, *(ch->ch_rqueue +tail +i), TTY_NORMAL);
			}
		} else {
			FUNC12(port, ch->ch_rqueue + tail, s);
		}
		tail += s;
		len -= s;
		/* Flip queue if needed */
		tail &= rmask;
	}

	ch->ch_r_tail = tail & rmask;
	ch->ch_e_tail = tail & rmask;
	FUNC4(ch);
	FUNC8(&ch->ch_lock, lock_flags);

	/* Tell the tty layer its okay to "eat" the data now */
	FUNC10(port);

	FUNC5(IOCTL, &ch->ch_bd->pci_dev, "finish\n");
}