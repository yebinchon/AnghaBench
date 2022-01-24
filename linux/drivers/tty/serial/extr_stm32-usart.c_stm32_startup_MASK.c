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
typedef  int u32 ;
struct uart_port {scalar_t__ membase; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct stm32_usart_offsets {scalar_t__ rqr; scalar_t__ cr1; scalar_t__ cr3; } ;
struct stm32_port {int cr1_irq; scalar_t__ fifoen; TYPE_1__* info; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {struct stm32_usart_offsets ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 scalar_t__ UNDEF_REG ; 
 int USART_CR1_FIFOEN ; 
 int USART_CR1_RE ; 
 int USART_CR3_RXFTCFG_HALF ; 
 int USART_CR3_RXFTCFG_MASK ; 
 int USART_CR3_RXFTCFG_SHIFT ; 
 int USART_CR3_TXFTCFG_HALF ; 
 int USART_CR3_TXFTCFG_MASK ; 
 int USART_CR3_TXFTCFG_SHIFT ; 
 int USART_RQR_RXFRQ ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct uart_port*) ; 
 int /*<<< orphan*/  stm32_interrupt ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,scalar_t__,int) ; 
 int /*<<< orphan*/  stm32_threaded_interrupt ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct stm32_port* FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct stm32_port *stm32_port = FUNC4(port);
	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
	const char *name = FUNC3(port->dev)->name;
	u32 val;
	int ret;

	ret = FUNC1(port->irq, stm32_interrupt,
				   stm32_threaded_interrupt,
				   IRQF_NO_SUSPEND, name, port);
	if (ret)
		return ret;

	/* RX FIFO Flush */
	if (ofs->rqr != UNDEF_REG)
		FUNC2(port, ofs->rqr, USART_RQR_RXFRQ);

	/* Tx and RX FIFO configuration */
	if (stm32_port->fifoen) {
		val = FUNC0(port->membase + ofs->cr3);
		val &= ~(USART_CR3_TXFTCFG_MASK | USART_CR3_RXFTCFG_MASK);
		val |= USART_CR3_TXFTCFG_HALF << USART_CR3_TXFTCFG_SHIFT;
		val |= USART_CR3_RXFTCFG_HALF << USART_CR3_RXFTCFG_SHIFT;
		FUNC5(val, port->membase + ofs->cr3);
	}

	/* RX FIFO enabling */
	val = stm32_port->cr1_irq | USART_CR1_RE;
	if (stm32_port->fifoen)
		val |= USART_CR1_FIFOEN;
	FUNC2(port, ofs->cr1, val);

	return 0;
}