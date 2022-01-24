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
struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct efm32_uart_port {int dummy; } ;

/* Variables and functions */
 int BRKINT ; 
 int CMSPAR ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int FUNC0 (int,int) ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 int SW_UARTn_RXDATAX_BERR ; 
 int /*<<< orphan*/  UARTn_CLKDIV ; 
 int /*<<< orphan*/  UARTn_CMD ; 
 int UARTn_CMD_RXDIS ; 
 int UARTn_CMD_RXEN ; 
 int UARTn_CMD_TXDIS ; 
 int UARTn_CMD_TXEN ; 
 int /*<<< orphan*/  UARTn_CTRL ; 
 int UARTn_CTRL_TXBIL ; 
 int /*<<< orphan*/  UARTn_FRAME ; 
 int FUNC1 (int) ; 
 int UARTn_FRAME_PARITY_EVEN ; 
 int UARTn_FRAME_PARITY_NONE ; 
 int UARTn_FRAME_PARITY_ODD ; 
 int UARTn_FRAME_STOPBITS_ONE ; 
 int UARTn_FRAME_STOPBITS_TWO ; 
 int UARTn_RXDATAX_FERR ; 
 int UARTn_RXDATAX_PERR ; 
 int UARTn_RXDATAX_RXDATA__MASK ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct efm32_uart_port* FUNC5 (struct uart_port*) ; 
 unsigned int FUNC6 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port,
		struct ktermios *new, struct ktermios *old)
{
	struct efm32_uart_port *efm_port = FUNC5(port);
	unsigned long flags;
	unsigned baud;
	u32 clkdiv;
	u32 frame = 0;

	/* no modem control lines */
	new->c_cflag &= ~(CRTSCTS | CMSPAR);

	baud = FUNC6(port, new, old,
			FUNC0(port->uartclk, 16 * 8192),
			FUNC0(port->uartclk, 16));

	switch (new->c_cflag & CSIZE) {
	case CS5:
		frame |= FUNC1(5);
		break;
	case CS6:
		frame |= FUNC1(6);
		break;
	case CS7:
		frame |= FUNC1(7);
		break;
	case CS8:
		frame |= FUNC1(8);
		break;
	}

	if (new->c_cflag & CSTOPB)
		/* the receiver only verifies the first stop bit */
		frame |= UARTn_FRAME_STOPBITS_TWO;
	else
		frame |= UARTn_FRAME_STOPBITS_ONE;

	if (new->c_cflag & PARENB) {
		if (new->c_cflag & PARODD)
			frame |= UARTn_FRAME_PARITY_ODD;
		else
			frame |= UARTn_FRAME_PARITY_EVEN;
	} else
		frame |= UARTn_FRAME_PARITY_NONE;

	/*
	 * the 6 lowest bits of CLKDIV are dc, bit 6 has value 0.25.
	 * port->uartclk <= 14e6, so 4 * port->uartclk doesn't overflow.
	 */
	clkdiv = (FUNC0(4 * port->uartclk, 16 * baud) - 4) << 6;

	FUNC3(&port->lock, flags);

	FUNC2(efm_port,
			UARTn_CMD_TXDIS | UARTn_CMD_RXDIS, UARTn_CMD);

	port->read_status_mask = UARTn_RXDATAX_RXDATA__MASK;
	if (new->c_iflag & INPCK)
		port->read_status_mask |=
			UARTn_RXDATAX_FERR | UARTn_RXDATAX_PERR;
	if (new->c_iflag & (IGNBRK | BRKINT | PARMRK))
		port->read_status_mask |= SW_UARTn_RXDATAX_BERR;

	port->ignore_status_mask = 0;
	if (new->c_iflag & IGNPAR)
		port->ignore_status_mask |=
			UARTn_RXDATAX_FERR | UARTn_RXDATAX_PERR;
	if (new->c_iflag & IGNBRK)
		port->ignore_status_mask |= SW_UARTn_RXDATAX_BERR;

	FUNC7(port, new->c_cflag, baud);

	FUNC2(efm_port, UARTn_CTRL_TXBIL, UARTn_CTRL);
	FUNC2(efm_port, frame, UARTn_FRAME);
	FUNC2(efm_port, clkdiv, UARTn_CLKDIV);

	FUNC2(efm_port, UARTn_CMD_TXEN | UARTn_CMD_RXEN,
			UARTn_CMD);

	FUNC4(&port->lock, flags);
}