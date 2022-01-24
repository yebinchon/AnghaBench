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
struct uart_port {int uartclk; int /*<<< orphan*/  ignore_status_mask; int /*<<< orphan*/  read_status_mask; } ;
struct mxs_auart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int AUART_CTRL2_CTSEN ; 
 int AUART_CTRL2_DMAONERR ; 
 int AUART_CTRL2_RTSEN ; 
 int AUART_CTRL2_RXDMAE ; 
 int AUART_CTRL2_RXE ; 
 int AUART_CTRL2_TXDMAE ; 
 int AUART_INTR_RTIEN ; 
 int AUART_INTR_RXIEN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  AUART_LINECTRL_BAUD_DIV_MAX ; 
 int AUART_LINECTRL_BAUD_DIV_MIN ; 
 int AUART_LINECTRL_EPS ; 
 int AUART_LINECTRL_FEN ; 
 int AUART_LINECTRL_PEN ; 
 int AUART_LINECTRL_SPS ; 
 int AUART_LINECTRL_STP2 ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  AUART_STAT_BERR ; 
 int /*<<< orphan*/  AUART_STAT_OERR ; 
 int /*<<< orphan*/  AUART_STAT_PERR ; 
 int BRKINT ; 
 unsigned int CMSPAR ; 
 unsigned int CREAD ; 
 unsigned int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 unsigned int CSIZE ; 
 unsigned int CSTOPB ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int,unsigned int) ; 
 unsigned int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int /*<<< orphan*/  MXS_AUART_DMA_RX_READY ; 
 int /*<<< orphan*/  MXS_AUART_RTSCTS ; 
 unsigned int PARENB ; 
 int PARMRK ; 
 unsigned int PARODD ; 
 int /*<<< orphan*/  REG_CTRL2 ; 
 int /*<<< orphan*/  REG_INTR ; 
 int /*<<< orphan*/  REG_LINECTRL ; 
 scalar_t__ FUNC6 (struct uart_port*,unsigned int) ; 
 scalar_t__ FUNC7 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (struct mxs_auart_port*) ; 
 scalar_t__ FUNC10 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mxs_auart_port* FUNC21 (struct uart_port*) ; 
 unsigned int FUNC22 (struct uart_port*,struct ktermios*,struct ktermios*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct uart_port*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC24(struct uart_port *u,
				 struct ktermios *termios,
				 struct ktermios *old)
{
	struct mxs_auart_port *s = FUNC21(u);
	u32 bm, ctrl, ctrl2, div;
	unsigned int cflag, baud, baud_min, baud_max;

	cflag = termios->c_cflag;

	ctrl = AUART_LINECTRL_FEN;
	ctrl2 = FUNC17(s, REG_CTRL2);

	/* byte size */
	switch (cflag & CSIZE) {
	case CS5:
		bm = 0;
		break;
	case CS6:
		bm = 1;
		break;
	case CS7:
		bm = 2;
		break;
	case CS8:
		bm = 3;
		break;
	default:
		return;
	}

	ctrl |= FUNC2(bm);

	/* parity */
	if (cflag & PARENB) {
		ctrl |= AUART_LINECTRL_PEN;
		if ((cflag & PARODD) == 0)
			ctrl |= AUART_LINECTRL_EPS;
		if (cflag & CMSPAR)
			ctrl |= AUART_LINECTRL_SPS;
	}

	u->read_status_mask = AUART_STAT_OERR;

	if (termios->c_iflag & INPCK)
		u->read_status_mask |= AUART_STAT_PERR;
	if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
		u->read_status_mask |= AUART_STAT_BERR;

	/*
	 * Characters to ignore
	 */
	u->ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		u->ignore_status_mask |= AUART_STAT_PERR;
	if (termios->c_iflag & IGNBRK) {
		u->ignore_status_mask |= AUART_STAT_BERR;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			u->ignore_status_mask |= AUART_STAT_OERR;
	}

	/*
	 * ignore all characters if CREAD is not set
	 */
	if (cflag & CREAD)
		ctrl2 |= AUART_CTRL2_RXE;
	else
		ctrl2 &= ~AUART_CTRL2_RXE;

	/* figure out the stop bits requested */
	if (cflag & CSTOPB)
		ctrl |= AUART_LINECTRL_STP2;

	/* figure out the hardware flow control settings */
	ctrl2 &= ~(AUART_CTRL2_CTSEN | AUART_CTRL2_RTSEN);
	if (cflag & CRTSCTS) {
		/*
		 * The DMA has a bug(see errata:2836) in mx23.
		 * So we can not implement the DMA for auart in mx23,
		 * we can only implement the DMA support for auart
		 * in mx28.
		 */
		if (FUNC10(s)
				&& FUNC20(MXS_AUART_RTSCTS, &s->flags)) {
			if (!FUNC13(s))
				/* enable DMA tranfer */
				ctrl2 |= AUART_CTRL2_TXDMAE | AUART_CTRL2_RXDMAE
				       | AUART_CTRL2_DMAONERR;
		}
		/* Even if RTS is GPIO line RTSEN can be enabled because
		 * the pinctrl configuration decides about RTS pin function */
		ctrl2 |= AUART_CTRL2_RTSEN;
		if (FUNC3())
			ctrl2 |= AUART_CTRL2_CTSEN;
	}

	/* set baud rate */
	if (FUNC9(s)) {
		baud = FUNC22(u, termios, old,
					  u->uartclk * 4 / 0x3FFFFF,
					  u->uartclk / 16);
		div = u->uartclk * 4 / baud;
	} else {
		baud_min = FUNC5(u->uartclk * 32,
					AUART_LINECTRL_BAUD_DIV_MAX);
		baud_max = u->uartclk * 32 / AUART_LINECTRL_BAUD_DIV_MIN;
		baud = FUNC22(u, termios, old, baud_min, baud_max);
		div = FUNC4(u->uartclk * 32, baud);
	}

	ctrl |= FUNC0(div & 0x3F);
	ctrl |= FUNC1(div >> 6);
	FUNC18(ctrl, s, REG_LINECTRL);

	FUNC18(ctrl2, s, REG_CTRL2);

	FUNC23(u, termios->c_cflag, baud);

	/* prepare for the DMA RX. */
	if (FUNC7(s) &&
		!FUNC19(MXS_AUART_DMA_RX_READY, &s->flags)) {
		if (!FUNC14(s)) {
			/* Disable the normal RX interrupt. */
			FUNC16(AUART_INTR_RXIEN | AUART_INTR_RTIEN,
				s, REG_INTR);
		} else {
			FUNC12(s);
			FUNC8(s->dev, "We can not start up the DMA.\n");
		}
	}

	/* CTS flow-control and modem-status interrupts */
	if (FUNC6(u, termios->c_cflag))
		FUNC15(u);
	else
		FUNC11(u);
}