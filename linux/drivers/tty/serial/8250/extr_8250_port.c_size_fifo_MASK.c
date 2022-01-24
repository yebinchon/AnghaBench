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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_FCR ; 
 unsigned char UART_FCR_CLEAR_RCVR ; 
 unsigned char UART_FCR_CLEAR_XMIT ; 
 unsigned char UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_CONF_MODE_A ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_DR ; 
 unsigned char UART_MCR_LOOP ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  UART_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,unsigned char) ; 
 unsigned short FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*,unsigned short) ; 
 unsigned char FUNC5 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC7(struct uart_8250_port *up)
{
	unsigned char old_fcr, old_mcr, old_lcr;
	unsigned short old_dl;
	int count;

	old_lcr = FUNC5(up, UART_LCR);
	FUNC6(up, UART_LCR, 0);
	old_fcr = FUNC5(up, UART_FCR);
	old_mcr = FUNC1(up);
	FUNC6(up, UART_FCR, UART_FCR_ENABLE_FIFO |
		    UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
	FUNC2(up, UART_MCR_LOOP);
	FUNC6(up, UART_LCR, UART_LCR_CONF_MODE_A);
	old_dl = FUNC3(up);
	FUNC4(up, 0x0001);
	FUNC6(up, UART_LCR, 0x03);
	for (count = 0; count < 256; count++)
		FUNC6(up, UART_TX, count);
	FUNC0(20);/* FIXME - schedule_timeout */
	for (count = 0; (FUNC5(up, UART_LSR) & UART_LSR_DR) &&
	     (count < 256); count++)
		FUNC5(up, UART_RX);
	FUNC6(up, UART_FCR, old_fcr);
	FUNC2(up, old_mcr);
	FUNC6(up, UART_LCR, UART_LCR_CONF_MODE_A);
	FUNC4(up, old_dl);
	FUNC6(up, UART_LCR, old_lcr);

	return count;
}