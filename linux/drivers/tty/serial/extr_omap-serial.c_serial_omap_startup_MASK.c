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
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  line; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqflags; } ;
struct uart_omap_port {int ier; int wer; int features; int /*<<< orphan*/  port_activity; int /*<<< orphan*/  dev; scalar_t__ msr_saved_flags; TYPE_1__ port; scalar_t__ wakeirq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int OMAP_UART_TX_WAKEUP_EN ; 
 int OMAP_UART_WER_HAS_TX_WAKEUP ; 
 int OMAP_UART_WER_MOD_WKUP ; 
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_WLEN8 ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_DR ; 
 int /*<<< orphan*/  UART_MSR ; 
 int /*<<< orphan*/  UART_OMAP_WER ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uart_omap_port*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_omap_port*) ; 
 int FUNC7 (struct uart_omap_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_omap_port*) ; 
 int /*<<< orphan*/  serial_omap_irq ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_omap_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_omap_port* FUNC13 (struct uart_port*) ; 

__attribute__((used)) static int FUNC14(struct uart_port *port)
{
	struct uart_omap_port *up = FUNC13(port);
	unsigned long flags = 0;
	int retval;

	/*
	 * Allocate the IRQ
	 */
	retval = FUNC6(up->port.irq, serial_omap_irq, up->port.irqflags,
				up->name, up);
	if (retval)
		return retval;

	/* Optional wake-up IRQ */
	if (up->wakeirq) {
		retval = FUNC1(up->dev, up->wakeirq);
		if (retval) {
			FUNC2(up->port.irq, up);
			return retval;
		}
	}

	FUNC0(up->port.dev, "serial_omap_startup+%d\n", up->port.line);

	FUNC3(up->dev);
	/*
	 * Clear the FIFO buffers and disable them.
	 * (they will be reenabled in set_termios())
	 */
	FUNC8(up);

	/*
	 * Clear the interrupt registers.
	 */
	(void) FUNC7(up, UART_LSR);
	if (FUNC7(up, UART_LSR) & UART_LSR_DR)
		(void) FUNC7(up, UART_RX);
	(void) FUNC7(up, UART_IIR);
	(void) FUNC7(up, UART_MSR);

	/*
	 * Now, initialize the UART
	 */
	FUNC10(up, UART_LCR, UART_LCR_WLEN8);
	FUNC11(&up->port.lock, flags);
	/*
	 * Most PC uarts need OUT2 raised to enable interrupts.
	 */
	up->port.mctrl |= TIOCM_OUT2;
	FUNC9(&up->port, up->port.mctrl);
	FUNC12(&up->port.lock, flags);

	up->msr_saved_flags = 0;
	/*
	 * Finally, enable interrupts. Note: Modem status interrupts
	 * are set via set_termios(), which will be occurring imminently
	 * anyway, so we don't enable them here.
	 */
	up->ier = UART_IER_RLSI | UART_IER_RDI;
	FUNC10(up, UART_IER, up->ier);

	/* Enable module level wake up */
	up->wer = OMAP_UART_WER_MOD_WKUP;
	if (up->features & OMAP_UART_WER_HAS_TX_WAKEUP)
		up->wer |= OMAP_UART_TX_WAKEUP_EN;

	FUNC10(up, UART_OMAP_WER, up->wer);

	FUNC4(up->dev);
	FUNC5(up->dev);
	up->port_activity = jiffies;
	return 0;
}