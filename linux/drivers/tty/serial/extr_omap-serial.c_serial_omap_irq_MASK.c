#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* state; int /*<<< orphan*/  lock; } ;
struct uart_omap_port {int /*<<< orphan*/  port_activity; int /*<<< orphan*/  dev; TYPE_2__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  UART_IIR ; 
#define  UART_IIR_CTS_RTS_DSR 134 
#define  UART_IIR_MSI 133 
 unsigned int UART_IIR_NO_INT ; 
#define  UART_IIR_RDI 132 
#define  UART_IIR_RLSI 131 
#define  UART_IIR_RX_TIMEOUT 130 
#define  UART_IIR_THRI 129 
#define  UART_IIR_XOFF 128 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_omap_port*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct uart_omap_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_omap_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_omap_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_omap_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct uart_omap_port *up = dev_id;
	unsigned int iir, lsr;
	unsigned int type;
	irqreturn_t ret = IRQ_NONE;
	int max_count = 256;

	FUNC7(&up->port.lock);
	FUNC1(up->dev);

	do {
		iir = FUNC4(up, UART_IIR);
		if (iir & UART_IIR_NO_INT)
			break;

		ret = IRQ_HANDLED;
		lsr = FUNC4(up, UART_LSR);

		/* extract IRQ type from IIR register */
		type = iir & 0x3e;

		switch (type) {
		case UART_IIR_MSI:
			FUNC0(up);
			break;
		case UART_IIR_THRI:
			FUNC9(up, lsr);
			break;
		case UART_IIR_RX_TIMEOUT:
			/* FALLTHROUGH */
		case UART_IIR_RDI:
			FUNC5(up, lsr);
			break;
		case UART_IIR_RLSI:
			FUNC6(up, lsr);
			break;
		case UART_IIR_CTS_RTS_DSR:
			/* simply try again */
			break;
		case UART_IIR_XOFF:
			/* FALLTHROUGH */
		default:
			break;
		}
	} while (max_count--);

	FUNC8(&up->port.lock);

	FUNC10(&up->port.state->port);

	FUNC2(up->dev);
	FUNC3(up->dev);
	up->port_activity = jiffies;

	return ret;
}