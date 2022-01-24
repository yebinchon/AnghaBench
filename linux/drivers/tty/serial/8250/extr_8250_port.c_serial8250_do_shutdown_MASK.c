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
struct uart_port {int flags; int iobase; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  irq; } ;
struct uart_8250_port {TYPE_1__* ops; scalar_t__ dma; scalar_t__ ier; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_irq ) (struct uart_8250_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCM_OUT1 ; 
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  UART_RX ; 
 int UPF_FOURPORT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct uart_8250_port* FUNC13 (struct uart_port*) ; 

void FUNC14(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC13(port);
	unsigned long flags;

	FUNC4(up);
	/*
	 * Disable interrupts from this port
	 */
	FUNC9(&port->lock, flags);
	up->ier = 0;
	FUNC8(port, UART_IER, 0);
	FUNC10(&port->lock, flags);

	FUNC12(port->irq);

	if (up->dma)
		FUNC3(up);

	FUNC9(&port->lock, flags);
	if (port->flags & UPF_FOURPORT) {
		/* reset interrupts on the AST Fourport board */
		FUNC1((port->iobase & 0xfe0) | 0x1f);
		port->mctrl |= TIOCM_OUT1;
	} else
		port->mctrl &= ~TIOCM_OUT2;

	FUNC6(port, port->mctrl);
	FUNC10(&port->lock, flags);

	/*
	 * Disable break condition and FIFOs
	 */
	FUNC8(port, UART_LCR,
			FUNC7(port, UART_LCR) & ~UART_LCR_SBC);
	FUNC2(up);

#ifdef CONFIG_SERIAL_8250_RSA
	/*
	 * Reset the RSA board back to 115kbps compat mode.
	 */
	disable_rsa(up);
#endif

	/*
	 * Read data port to reset things, and then unlink from
	 * the IRQ chain.
	 */
	FUNC7(port, UART_RX);
	FUNC5(up);

	up->ops->release_irq(up);
}