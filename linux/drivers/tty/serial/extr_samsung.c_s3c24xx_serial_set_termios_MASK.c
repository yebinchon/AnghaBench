#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int flags; unsigned int custom_divisor; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;
struct s3c24xx_uart_port {unsigned int baudclk_rate; TYPE_1__* info; struct clk* baudclk; } ;
struct s3c2410_uartcfg {unsigned int ulcon; scalar_t__ has_fracval; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_divslot; } ;

/* Variables and functions */
 int CLOCAL ; 
 int CMSPAR ; 
 int CREAD ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int HUPCL ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int PARENB ; 
 int PARODD ; 
 int RXSTAT_DUMMY_READ ; 
 unsigned int S3C2410_LCON_CS5 ; 
 unsigned int S3C2410_LCON_CS6 ; 
 unsigned int S3C2410_LCON_CS7 ; 
 unsigned int S3C2410_LCON_CS8 ; 
 unsigned int S3C2410_LCON_IRM ; 
 unsigned int S3C2410_LCON_PEVEN ; 
 unsigned int S3C2410_LCON_PNONE ; 
 unsigned int S3C2410_LCON_PODD ; 
 unsigned int S3C2410_LCON_STOPB ; 
 int /*<<< orphan*/  S3C2410_UBRDIV ; 
 int /*<<< orphan*/  S3C2410_UCON ; 
 int S3C2410_UERSTAT_FRAME ; 
 int S3C2410_UERSTAT_OVERRUN ; 
 int S3C2410_UERSTAT_PARITY ; 
 int /*<<< orphan*/  S3C2410_UFCON ; 
 int /*<<< orphan*/  S3C2410_ULCON ; 
 unsigned int S3C2410_UMCOM_AFC ; 
 int /*<<< orphan*/  S3C2410_UMCON ; 
 unsigned int S3C2412_UMCON_AFC_8 ; 
 int /*<<< orphan*/  S3C2443_DIVSLOT ; 
 int UPF_SPD_CUST ; 
 int UPF_SPD_MASK ; 
 int /*<<< orphan*/  UPSTAT_AUTOCTS ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 unsigned int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 unsigned int FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct s3c2410_uartcfg* FUNC7 (struct uart_port*) ; 
 unsigned int FUNC8 (struct s3c24xx_uart_port*,unsigned int,struct clk**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct s3c24xx_uart_port* FUNC12 (struct uart_port*) ; 
 unsigned int FUNC13 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct uart_port*,int,unsigned int) ; 
 unsigned int* udivslot_table ; 
 int /*<<< orphan*/  FUNC15 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC16(struct uart_port *port,
				       struct ktermios *termios,
				       struct ktermios *old)
{
	struct s3c2410_uartcfg *cfg = FUNC7(port);
	struct s3c24xx_uart_port *ourport = FUNC12(port);
	struct clk *clk = FUNC0(-EINVAL);
	unsigned long flags;
	unsigned int baud, quot, clk_sel = 0;
	unsigned int ulcon;
	unsigned int umcon;
	unsigned int udivslot = 0;

	/*
	 * We don't support modem control lines.
	 */
	termios->c_cflag &= ~(HUPCL | CMSPAR);
	termios->c_cflag |= CLOCAL;

	/*
	 * Ask the core to calculate the divisor for us.
	 */

	baud = FUNC13(port, termios, old, 0, 3000000);
	quot = FUNC8(ourport, baud, &clk, &clk_sel);
	if (baud == 38400 && (port->flags & UPF_SPD_MASK) == UPF_SPD_CUST)
		quot = port->custom_divisor;
	if (FUNC1(clk))
		return;

	/* check to see if we need  to change clock source */

	if (ourport->baudclk != clk) {
		FUNC4(clk);

		FUNC9(port, clk_sel);

		if (!FUNC1(ourport->baudclk)) {
			FUNC2(ourport->baudclk);
			ourport->baudclk = FUNC0(-EINVAL);
		}

		ourport->baudclk = clk;
		ourport->baudclk_rate = clk ? FUNC3(clk) : 0;
	}

	if (ourport->info->has_divslot) {
		unsigned int div = ourport->baudclk_rate / baud;

		if (cfg->has_fracval) {
			udivslot = (div & 15);
			FUNC5("fracval = %04x\n", udivslot);
		} else {
			udivslot = udivslot_table[div & 15];
			FUNC5("udivslot = %04x (div %d)\n", udivslot, div & 15);
		}
	}

	switch (termios->c_cflag & CSIZE) {
	case CS5:
		FUNC5("config: 5bits/char\n");
		ulcon = S3C2410_LCON_CS5;
		break;
	case CS6:
		FUNC5("config: 6bits/char\n");
		ulcon = S3C2410_LCON_CS6;
		break;
	case CS7:
		FUNC5("config: 7bits/char\n");
		ulcon = S3C2410_LCON_CS7;
		break;
	case CS8:
	default:
		FUNC5("config: 8bits/char\n");
		ulcon = S3C2410_LCON_CS8;
		break;
	}

	/* preserve original lcon IR settings */
	ulcon |= (cfg->ulcon & S3C2410_LCON_IRM);

	if (termios->c_cflag & CSTOPB)
		ulcon |= S3C2410_LCON_STOPB;

	if (termios->c_cflag & PARENB) {
		if (termios->c_cflag & PARODD)
			ulcon |= S3C2410_LCON_PODD;
		else
			ulcon |= S3C2410_LCON_PEVEN;
	} else {
		ulcon |= S3C2410_LCON_PNONE;
	}

	FUNC10(&port->lock, flags);

	FUNC5("setting ulcon to %08x, brddiv to %d, udivslot %08x\n",
	    ulcon, quot, udivslot);

	FUNC15(port, S3C2410_ULCON, ulcon);
	FUNC15(port, S3C2410_UBRDIV, quot);

	port->status &= ~UPSTAT_AUTOCTS;

	umcon = FUNC6(port, S3C2410_UMCON);
	if (termios->c_cflag & CRTSCTS) {
		umcon |= S3C2410_UMCOM_AFC;
		/* Disable RTS when RX FIFO contains 63 bytes */
		umcon &= ~S3C2412_UMCON_AFC_8;
		port->status = UPSTAT_AUTOCTS;
	} else {
		umcon &= ~S3C2410_UMCOM_AFC;
	}
	FUNC15(port, S3C2410_UMCON, umcon);

	if (ourport->info->has_divslot)
		FUNC15(port, S3C2443_DIVSLOT, udivslot);

	FUNC5("uart: ulcon = 0x%08x, ucon = 0x%08x, ufcon = 0x%08x\n",
	    FUNC6(port, S3C2410_ULCON),
	    FUNC6(port, S3C2410_UCON),
	    FUNC6(port, S3C2410_UFCON));

	/*
	 * Update the per-port timeout.
	 */
	FUNC14(port, termios->c_cflag, baud);

	/*
	 * Which character status flags are we interested in?
	 */
	port->read_status_mask = S3C2410_UERSTAT_OVERRUN;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= S3C2410_UERSTAT_FRAME |
			S3C2410_UERSTAT_PARITY;
	/*
	 * Which character status flags should we ignore?
	 */
	port->ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		port->ignore_status_mask |= S3C2410_UERSTAT_OVERRUN;
	if (termios->c_iflag & IGNBRK && termios->c_iflag & IGNPAR)
		port->ignore_status_mask |= S3C2410_UERSTAT_FRAME;

	/*
	 * Ignore all characters if CREAD is not set.
	 */
	if ((termios->c_cflag & CREAD) == 0)
		port->ignore_status_mask |= RXSTAT_DUMMY_READ;

	FUNC11(&port->lock, flags);
}