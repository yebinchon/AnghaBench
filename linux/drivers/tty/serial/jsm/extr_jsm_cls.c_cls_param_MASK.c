#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_9__ {TYPE_2__* state; } ;
struct jsm_channel {int ch_c_cflag; int ch_flags; int ch_mostat; int ch_c_iflag; scalar_t__ ch_startc; scalar_t__ ch_stopc; TYPE_4__* ch_cls_uart; struct jsm_board* ch_bd; TYPE_3__ uart_port; scalar_t__ ch_e_tail; scalar_t__ ch_e_head; scalar_t__ ch_r_tail; scalar_t__ ch_r_head; } ;
struct jsm_board {int bd_dividend; } ;
struct TYPE_11__ {unsigned int cflag; int rate; } ;
struct TYPE_10__ {int /*<<< orphan*/  msr; int /*<<< orphan*/  ier; int /*<<< orphan*/  lcr; int /*<<< orphan*/  txrx; } ;
struct TYPE_7__ {int /*<<< orphan*/  tty; } ;
struct TYPE_8__ {TYPE_1__ port; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int CBAUD ; 
 int CH_BAUD0 ; 
 int CMSPAR ; 
 int CREAD ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int IXOFF ; 
 int IXON ; 
 int PARENB ; 
 int PARODD ; 
 int UART_IER_MSI ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int UART_IER_THRI ; 
 int UART_LCR_DLAB ; 
 int UART_LCR_EPAR ; 
 int UART_LCR_PARITY ; 
 int UART_LCR_SPAR ; 
 int UART_LCR_STOP ; 
 int UART_LCR_WLEN5 ; 
 int UART_LCR_WLEN6 ; 
 int UART_LCR_WLEN7 ; 
 int UART_LCR_WLEN8 ; 
 int UART_MCR_DTR ; 
 int UART_MCR_RTS ; 
 scalar_t__ __DISABLED_CHAR ; 
 TYPE_5__* baud_rates ; 
 int /*<<< orphan*/  FUNC2 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct jsm_channel*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC8 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC9 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC10 (struct jsm_channel*) ; 
 int /*<<< orphan*/  FUNC11 (struct jsm_channel*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct jsm_channel *ch)
{
	u8 lcr = 0;
	u8 uart_lcr = 0;
	u8 ier = 0;
	u32 baud = 9600;
	int quot = 0;
	struct jsm_board *bd;
	int i;
	unsigned int cflag;

	bd = ch->ch_bd;
	if (!bd)
		return;

	/*
	 * If baud rate is zero, flush queues, and set mval to drop DTR.
	 */
	if ((ch->ch_c_cflag & (CBAUD)) == 0) {
		ch->ch_r_head = 0;
		ch->ch_r_tail = 0;
		ch->ch_e_head = 0;
		ch->ch_e_tail = 0;

		FUNC4(ch);
		FUNC3(ch);

		/* The baudrate is B0 so all modem lines are to be dropped. */
		ch->ch_flags |= (CH_BAUD0);
		ch->ch_mostat &= ~(UART_MCR_RTS | UART_MCR_DTR);
		FUNC2(ch);
		return;
	}

	cflag = FUNC1(ch->uart_port.state->port.tty);
	baud = 9600;
	for (i = 0; i < FUNC0(baud_rates); i++) {
		if (baud_rates[i].cflag == cflag) {
			baud = baud_rates[i].rate;
			break;
		}
	}

	if (ch->ch_flags & CH_BAUD0)
		ch->ch_flags &= ~(CH_BAUD0);

	if (ch->ch_c_cflag & PARENB)
		lcr |= UART_LCR_PARITY;

	if (!(ch->ch_c_cflag & PARODD))
		lcr |= UART_LCR_EPAR;

	/*
	 * Not all platforms support mark/space parity,
	 * so this will hide behind an ifdef.
	 */
#ifdef CMSPAR
	if (ch->ch_c_cflag & CMSPAR)
		lcr |= UART_LCR_SPAR;
#endif

	if (ch->ch_c_cflag & CSTOPB)
		lcr |= UART_LCR_STOP;

	switch (ch->ch_c_cflag & CSIZE) {
	case CS5:
		lcr |= UART_LCR_WLEN5;
		break;
	case CS6:
		lcr |= UART_LCR_WLEN6;
		break;
	case CS7:
		lcr |= UART_LCR_WLEN7;
		break;
	case CS8:
	default:
		lcr |= UART_LCR_WLEN8;
		break;
	}

	ier = FUNC12(&ch->ch_cls_uart->ier);
	uart_lcr = FUNC12(&ch->ch_cls_uart->lcr);

	quot = ch->ch_bd->bd_dividend / baud;

	if (quot != 0) {
		FUNC13(UART_LCR_DLAB, &ch->ch_cls_uart->lcr);
		FUNC13((quot & 0xff), &ch->ch_cls_uart->txrx);
		FUNC13((quot >> 8), &ch->ch_cls_uart->ier);
		FUNC13(lcr, &ch->ch_cls_uart->lcr);
	}

	if (uart_lcr != lcr)
		FUNC13(lcr, &ch->ch_cls_uart->lcr);

	if (ch->ch_c_cflag & CREAD)
		ier |= (UART_IER_RDI | UART_IER_RLSI);

	ier |= (UART_IER_THRI | UART_IER_MSI);

	FUNC13(ier, &ch->ch_cls_uart->ier);

	if (ch->ch_c_cflag & CRTSCTS)
		FUNC6(ch);
	else if (ch->ch_c_iflag & IXON) {
		/*
		 * If start/stop is set to disable,
		 * then we should disable flow control.
		 */
		if ((ch->ch_startc == __DISABLED_CHAR) ||
			(ch->ch_stopc == __DISABLED_CHAR))
			FUNC10(ch);
		else
			FUNC8(ch);
	} else
		FUNC10(ch);

	if (ch->ch_c_cflag & CRTSCTS)
		FUNC11(ch);
	else if (ch->ch_c_iflag & IXOFF) {
		/*
		 * If start/stop is set to disable,
		 * then we should disable flow control.
		 */
		if ((ch->ch_startc == __DISABLED_CHAR) ||
			(ch->ch_stopc == __DISABLED_CHAR))
			FUNC9(ch);
		else
			FUNC7(ch);
	} else
		FUNC9(ch);

	FUNC2(ch);

	/* get current status of the modem signals now */
	FUNC5(ch, FUNC12(&ch->ch_cls_uart->msr));
}