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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  read_status_mask; } ;
struct owl_uart_port {int dummy; } ;
struct ktermios {int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int CMSPAR ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int INPCK ; 
 int /*<<< orphan*/  OWL_UART_CTL ; 
 int /*<<< orphan*/  OWL_UART_CTL_AFE ; 
 int /*<<< orphan*/  OWL_UART_CTL_DWLS_5BITS ; 
 int /*<<< orphan*/  OWL_UART_CTL_DWLS_6BITS ; 
 int /*<<< orphan*/  OWL_UART_CTL_DWLS_7BITS ; 
 int /*<<< orphan*/  OWL_UART_CTL_DWLS_8BITS ; 
 int /*<<< orphan*/  OWL_UART_CTL_DWLS_MASK ; 
 int /*<<< orphan*/  OWL_UART_CTL_PRS_EVEN ; 
 int /*<<< orphan*/  OWL_UART_CTL_PRS_MARK ; 
 int /*<<< orphan*/  OWL_UART_CTL_PRS_MASK ; 
 int /*<<< orphan*/  OWL_UART_CTL_PRS_NONE ; 
 int /*<<< orphan*/  OWL_UART_CTL_PRS_ODD ; 
 int /*<<< orphan*/  OWL_UART_CTL_PRS_SPACE ; 
 int /*<<< orphan*/  OWL_UART_CTL_STPS_2BITS ; 
 int /*<<< orphan*/  OWL_UART_STAT_RXER ; 
 int /*<<< orphan*/  OWL_UART_STAT_RXST ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  FUNC0 (struct owl_uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct owl_uart_port* FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC7 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC8 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port,
				 struct ktermios *termios,
				 struct ktermios *old)
{
	struct owl_uart_port *owl_port = FUNC5(port);
	unsigned int baud;
	u32 ctl;
	unsigned long flags;

	FUNC3(&port->lock, flags);

	ctl = FUNC1(port, OWL_UART_CTL);

	ctl &= ~OWL_UART_CTL_DWLS_MASK;
	switch (termios->c_cflag & CSIZE) {
	case CS5:
		ctl |= OWL_UART_CTL_DWLS_5BITS;
		break;
	case CS6:
		ctl |= OWL_UART_CTL_DWLS_6BITS;
		break;
	case CS7:
		ctl |= OWL_UART_CTL_DWLS_7BITS;
		break;
	case CS8:
	default:
		ctl |= OWL_UART_CTL_DWLS_8BITS;
		break;
	}

	if (termios->c_cflag & CSTOPB)
		ctl |= OWL_UART_CTL_STPS_2BITS;
	else
		ctl &= ~OWL_UART_CTL_STPS_2BITS;

	ctl &= ~OWL_UART_CTL_PRS_MASK;
	if (termios->c_cflag & PARENB) {
		if (termios->c_cflag & CMSPAR) {
			if (termios->c_cflag & PARODD)
				ctl |= OWL_UART_CTL_PRS_MARK;
			else
				ctl |= OWL_UART_CTL_PRS_SPACE;
		} else if (termios->c_cflag & PARODD)
			ctl |= OWL_UART_CTL_PRS_ODD;
		else
			ctl |= OWL_UART_CTL_PRS_EVEN;
	} else
		ctl |= OWL_UART_CTL_PRS_NONE;

	if (termios->c_cflag & CRTSCTS)
		ctl |= OWL_UART_CTL_AFE;
	else
		ctl &= ~OWL_UART_CTL_AFE;

	FUNC2(port, ctl, OWL_UART_CTL);

	baud = FUNC8(port, termios, old, 9600, 3200000);
	FUNC0(owl_port, baud);

	/* Don't rewrite B0 */
	if (FUNC6(termios))
		FUNC7(termios, baud, baud);

	port->read_status_mask |= OWL_UART_STAT_RXER;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= OWL_UART_STAT_RXST;

	FUNC9(port, termios->c_cflag, baud);

	FUNC4(&port->lock, flags);
}