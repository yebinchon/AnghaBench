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
typedef  unsigned int u32 ;
struct uart_port {int uartclk; int /*<<< orphan*/  lock; int /*<<< orphan*/  membase; } ;
struct ktermios {int c_cflag; } ;

/* Variables and functions */
 int CLOCAL ; 
 int CMSPAR ; 
 int CREAD ; 
 int CRTSCTS ; 
 int CS8 ; 
 int CSIZE ; 
 int CSTOPB ; 
 int HUPCL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int LPC32XX_HSU_ERR_INT_EN ; 
 unsigned int LPC32XX_HSU_RX_INT_EN ; 
 int PARENB ; 
 int PARODD ; 
 unsigned int FUNC2 (int,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC7 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC8 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct uart_port *port,
				       struct ktermios *termios,
				       struct ktermios *old)
{
	unsigned long flags;
	unsigned int baud, quot;
	u32 tmp;

	/* Always 8-bit, no parity, 1 stop bit */
	termios->c_cflag &= ~(CSIZE | CSTOPB | PARENB | PARODD);
	termios->c_cflag |= CS8;

	termios->c_cflag &= ~(HUPCL | CMSPAR | CLOCAL | CRTSCTS);

	baud = FUNC8(port, termios, old, 0,
				  port->uartclk / 14);

	quot = FUNC2(port->uartclk, baud);

	FUNC4(&port->lock, flags);

	/* Ignore characters? */
	tmp = FUNC3(FUNC0(port->membase));
	if ((termios->c_cflag & CREAD) == 0)
		tmp &= ~(LPC32XX_HSU_RX_INT_EN | LPC32XX_HSU_ERR_INT_EN);
	else
		tmp |= LPC32XX_HSU_RX_INT_EN | LPC32XX_HSU_ERR_INT_EN;
	FUNC10(tmp, FUNC0(port->membase));

	FUNC10(quot, FUNC1(port->membase));

	FUNC9(port, termios->c_cflag, baud);

	FUNC5(&port->lock, flags);

	/* Don't rewrite B0 */
	if (FUNC6(termios))
		FUNC7(termios, baud, baud);
}