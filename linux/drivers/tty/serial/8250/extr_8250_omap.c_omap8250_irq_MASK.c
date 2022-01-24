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
struct uart_port {int dummy; } ;
struct uart_8250_port {scalar_t__ dma; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UART_IIR ; 
 int FUNC1 (struct uart_port*) ; 
 int FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*) ; 
 unsigned int FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct uart_8250_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct uart_8250_port *up = FUNC6(port);
	unsigned int iir;
	int ret;

#ifdef CONFIG_SERIAL_8250_DMA
	if (up->dma) {
		ret = omap_8250_dma_handle_irq(port);
		return IRQ_RETVAL(ret);
	}
#endif

	FUNC3(up);
	iir = FUNC5(port, UART_IIR);
	ret = FUNC2(port, iir);
	FUNC4(up);

	return FUNC0(ret);
}