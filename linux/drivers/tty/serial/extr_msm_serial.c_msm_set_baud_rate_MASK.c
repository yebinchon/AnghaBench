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
struct uart_port {unsigned long uartclk; int fifosize; int /*<<< orphan*/  lock; } ;
struct msm_port {int imr; scalar_t__ is_uartdm; int /*<<< orphan*/  clk; } ;
struct msm_baud_map {unsigned long divisor; int code; unsigned int rxstale; } ;

/* Variables and functions */
 int /*<<< orphan*/  UARTDM_DMRX ; 
 int /*<<< orphan*/  UART_CR ; 
 int UART_CR_CMD_PROTECTION_EN ; 
 int UART_CR_CMD_RESET_STALE_INT ; 
 int UART_CR_CMD_STALE_EVENT_ENABLE ; 
 int UART_CR_RX_ENABLE ; 
 int UART_CR_TX_ENABLE ; 
 int /*<<< orphan*/  UART_CSR ; 
 unsigned int UART_DM_IPR_STALE_TIMEOUT_MSB ; 
 int /*<<< orphan*/  UART_IMR ; 
 int UART_IMR_CURRENT_CTS ; 
 int UART_IMR_RXBREAK_START ; 
 int UART_IMR_RXLEV ; 
 int UART_IMR_RXSTALE ; 
 int /*<<< orphan*/  UART_IPR ; 
 unsigned int UART_IPR_RXSTALE_LAST ; 
 unsigned int UART_IPR_STALE_LSB ; 
 unsigned int UART_IPR_STALE_TIMEOUT_MSB ; 
 int /*<<< orphan*/  UART_RFWR ; 
 int /*<<< orphan*/  UART_TFWR ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 struct msm_baud_map* FUNC2 (struct uart_port*,unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port, unsigned int baud,
			     unsigned long *saved_flags)
{
	unsigned int rxstale, watermark, mask;
	struct msm_port *msm_port = FUNC0(port);
	const struct msm_baud_map *entry;
	unsigned long flags, rate;

	flags = *saved_flags;
	FUNC6(&port->lock, flags);

	entry = FUNC2(port, baud, &rate);
	FUNC1(msm_port->clk, rate);
	baud = rate / 16 / entry->divisor;

	FUNC5(&port->lock, flags);
	*saved_flags = flags;
	port->uartclk = rate;

	FUNC4(port, entry->code, UART_CSR);

	/* RX stale watermark */
	rxstale = entry->rxstale;
	watermark = UART_IPR_STALE_LSB & rxstale;
	if (msm_port->is_uartdm) {
		mask = UART_DM_IPR_STALE_TIMEOUT_MSB;
	} else {
		watermark |= UART_IPR_RXSTALE_LAST;
		mask = UART_IPR_STALE_TIMEOUT_MSB;
	}

	watermark |= mask & (rxstale << 2);

	FUNC4(port, watermark, UART_IPR);

	/* set RX watermark */
	watermark = (port->fifosize * 3) / 4;
	FUNC4(port, watermark, UART_RFWR);

	/* set TX watermark */
	FUNC4(port, 10, UART_TFWR);

	FUNC4(port, UART_CR_CMD_PROTECTION_EN, UART_CR);
	FUNC3(port);

	/* Enable RX and TX */
	FUNC4(port, UART_CR_TX_ENABLE | UART_CR_RX_ENABLE, UART_CR);

	/* turn on RX and CTS interrupts */
	msm_port->imr = UART_IMR_RXLEV | UART_IMR_RXSTALE |
			UART_IMR_CURRENT_CTS | UART_IMR_RXBREAK_START;

	FUNC4(port, msm_port->imr, UART_IMR);

	if (msm_port->is_uartdm) {
		FUNC4(port, UART_CR_CMD_RESET_STALE_INT, UART_CR);
		FUNC4(port, 0xFFFFFF, UARTDM_DMRX);
		FUNC4(port, UART_CR_CMD_STALE_EVENT_ENABLE, UART_CR);
	}

	return baud;
}