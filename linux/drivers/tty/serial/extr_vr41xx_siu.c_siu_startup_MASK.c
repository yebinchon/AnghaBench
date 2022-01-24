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
struct uart_port {scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  irq; int /*<<< orphan*/ * membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSIUINT_ALL ; 
 int ENODEV ; 
 scalar_t__ PORT_VR41XX_DSIU ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_WLEN8 ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  UART_MSR ; 
 int /*<<< orphan*/  UART_RX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  siu_interrupt ; 
 int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct uart_port *port)
{
	int retval;

	if (port->membase == NULL)
		return -ENODEV;

	FUNC1(port);

	(void)FUNC2(port, UART_LSR);
	(void)FUNC2(port, UART_RX);
	(void)FUNC2(port, UART_IIR);
	(void)FUNC2(port, UART_MSR);

	if (FUNC2(port, UART_LSR) == 0xff)
		return -ENODEV;

	retval = FUNC0(port->irq, siu_interrupt, 0, FUNC4(port), port);
	if (retval)
		return retval;

	if (port->type == PORT_VR41XX_DSIU)
		FUNC8(DSIUINT_ALL);

	FUNC5(port, UART_LCR, UART_LCR_WLEN8);

	FUNC6(&port->lock);
	FUNC3(port, port->mctrl);
	FUNC7(&port->lock);

	FUNC5(port, UART_IER, UART_IER_RLSI | UART_IER_RDI);

	(void)FUNC2(port, UART_LSR);
	(void)FUNC2(port, UART_RX);
	(void)FUNC2(port, UART_IIR);
	(void)FUNC2(port, UART_MSR);

	return 0;
}