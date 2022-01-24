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
struct uart_port {int fifosize; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_CTL_REG ; 
 unsigned int UART_CTL_RXTMOUTCNT_MASK ; 
 int UART_CTL_RXTMOUTCNT_SHIFT ; 
 unsigned int UART_EXTINP_CTS_NOSENSE_MASK ; 
 unsigned int UART_EXTINP_DCD_NOSENSE_MASK ; 
 unsigned int UART_EXTINP_INT_MASK ; 
 int /*<<< orphan*/  UART_EXTINP_REG ; 
 int /*<<< orphan*/  UART_IR_REG ; 
 int /*<<< orphan*/  UART_MCTL_REG ; 
 unsigned int UART_MCTL_RXFIFOTHRESH_MASK ; 
 int UART_MCTL_RXFIFOTHRESH_SHIFT ; 
 unsigned int UART_MCTL_TXFIFOTHRESH_MASK ; 
 int UART_MCTL_TXFIFOTHRESH_SHIFT ; 
 unsigned int UART_RX_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  bcm_uart_interrupt ; 
 unsigned int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port)
{
	unsigned int val;
	int ret;

	/* mask all irq and flush port */
	FUNC0(port);
	FUNC4(port, 0, UART_IR_REG);
	FUNC2(port);

	/* clear any pending external input interrupt */
	(void)FUNC3(port, UART_EXTINP_REG);

	/* set rx/tx fifo thresh to fifo half size */
	val = FUNC3(port, UART_MCTL_REG);
	val &= ~(UART_MCTL_RXFIFOTHRESH_MASK | UART_MCTL_TXFIFOTHRESH_MASK);
	val |= (port->fifosize / 2) << UART_MCTL_RXFIFOTHRESH_SHIFT;
	val |= (port->fifosize / 2) << UART_MCTL_TXFIFOTHRESH_SHIFT;
	FUNC4(port, val, UART_MCTL_REG);

	/* set rx fifo timeout to 1 char time */
	val = FUNC3(port, UART_CTL_REG);
	val &= ~UART_CTL_RXTMOUTCNT_MASK;
	val |= 1 << UART_CTL_RXTMOUTCNT_SHIFT;
	FUNC4(port, val, UART_CTL_REG);

	/* report any edge on dcd and cts */
	val = UART_EXTINP_INT_MASK;
	val |= UART_EXTINP_DCD_NOSENSE_MASK;
	val |= UART_EXTINP_CTS_NOSENSE_MASK;
	FUNC4(port, val, UART_EXTINP_REG);

	/* register irq and enable rx interrupts */
	ret = FUNC6(port->irq, bcm_uart_interrupt, 0,
			  FUNC5(port->dev), port);
	if (ret)
		return ret;
	FUNC4(port, UART_RX_INT_MASK, UART_IR_REG);
	FUNC1(port);
	return 0;
}