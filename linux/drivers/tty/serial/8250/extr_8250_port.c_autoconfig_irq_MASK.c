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
struct uart_port {int flags; int iobase; int irq; } ;
struct uart_8250_port {struct uart_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_MCR_DTR ; 
 unsigned char UART_MCR_OUT1 ; 
 unsigned char UART_MCR_OUT2 ; 
 unsigned char UART_MCR_RTS ; 
 int /*<<< orphan*/  UART_MSR ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  UART_TX ; 
 int UPF_FOURPORT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned char FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,unsigned int) ; 
 int FUNC4 (unsigned long) ; 
 unsigned long FUNC5 () ; 
 unsigned char FUNC6 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_8250_port*,unsigned char) ; 
 unsigned char FUNC8 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 
 scalar_t__ FUNC10 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct uart_8250_port *up)
{
	struct uart_port *port = &up->port;
	unsigned char save_mcr, save_ier;
	unsigned char save_ICP = 0;
	unsigned int ICP = 0;
	unsigned long irqs;
	int irq;

	if (port->flags & UPF_FOURPORT) {
		ICP = (port->iobase & 0xfe0) | 0x1f;
		save_ICP = FUNC2(ICP);
		FUNC3(0x80, ICP);
		FUNC2(ICP);
	}

	if (FUNC10(port))
		FUNC0();

	/* forget possible initially masked and pending IRQ */
	FUNC4(FUNC5());
	save_mcr = FUNC6(up);
	save_ier = FUNC8(up, UART_IER);
	FUNC7(up, UART_MCR_OUT1 | UART_MCR_OUT2);

	irqs = FUNC5();
	FUNC7(up, 0);
	FUNC11(10);
	if (port->flags & UPF_FOURPORT) {
		FUNC7(up, UART_MCR_DTR | UART_MCR_RTS);
	} else {
		FUNC7(up,
			UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2);
	}
	FUNC9(up, UART_IER, 0x0f);	/* enable all intrs */
	FUNC8(up, UART_LSR);
	FUNC8(up, UART_RX);
	FUNC8(up, UART_IIR);
	FUNC8(up, UART_MSR);
	FUNC9(up, UART_TX, 0xFF);
	FUNC11(20);
	irq = FUNC4(irqs);

	FUNC7(up, save_mcr);
	FUNC9(up, UART_IER, save_ier);

	if (port->flags & UPF_FOURPORT)
		FUNC3(save_ICP, ICP);

	if (FUNC10(port))
		FUNC1();

	port->irq = (irq > 0) ? irq : 0;
}