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
typedef  unsigned int u8 ;
struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; scalar_t__ membase; } ;
struct ktermios {int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int CMSPAR ; 
 int CREAD ; 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int INPCK ; 
 int PARENB ; 
 int PARODD ; 
 scalar_t__ UA_CONFIG ; 
 unsigned int UA_CONFIG_CHAR_LEN ; 
 unsigned int UA_CONFIG_ODD_PARITY ; 
 unsigned int UA_CONFIG_PARITY ; 
 unsigned int UA_CONFIG_STOP_BITS ; 
 scalar_t__ UA_HBAUD_HI ; 
 scalar_t__ UA_HBAUD_LO ; 
 int UA_STATUS_FRAME_ERR ; 
 int UA_STATUS_OVERRUN_ERR ; 
 int UA_STATUS_PARITY_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC2 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int FUNC3 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port,
				       struct ktermios *termios,
				       struct ktermios *old)
{
	unsigned int baud, divisor;
	u8 config = 0;
	unsigned long flags;

	/* Mask termios capabilities we don't support */
	termios->c_cflag &= ~CMSPAR;
	termios->c_iflag &= ~(BRKINT | IGNBRK);

	/* Limit baud rates so that we don't need the fractional divider */
	baud = FUNC2(port, termios, old,
				  port->uartclk / (0x10000*16),
				  port->uartclk / 256);
	divisor = FUNC3(port, baud) - 1;

	switch (termios->c_cflag & CSIZE) {
	case CS7:
		break;
	case CS8:
	default:
		config |= UA_CONFIG_CHAR_LEN;
		break;
	}

	if (termios->c_cflag & CSTOPB)
		config |= UA_CONFIG_STOP_BITS;

	if (termios->c_cflag & PARENB) {
		config |= UA_CONFIG_PARITY;
		if (termios->c_cflag & PARODD)
			config |= UA_CONFIG_ODD_PARITY;
	}

	/* Set read status mask */
	port->read_status_mask = UA_STATUS_OVERRUN_ERR;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= UA_STATUS_PARITY_ERR
			| UA_STATUS_FRAME_ERR;

	/* Set status ignore mask */
	port->ignore_status_mask = 0;
	if (!(termios->c_cflag & CREAD))
		port->ignore_status_mask |= UA_STATUS_OVERRUN_ERR
			| UA_STATUS_PARITY_ERR | UA_STATUS_FRAME_ERR;

	FUNC0(&port->lock, flags);

	FUNC4(port, termios->c_cflag, baud);

	FUNC5(config, port->membase + UA_CONFIG);
	FUNC5(divisor & 0xff, port->membase + UA_HBAUD_LO);
	FUNC5(divisor >> 8, port->membase + UA_HBAUD_HI);

	FUNC1(&port->lock, flags);
}