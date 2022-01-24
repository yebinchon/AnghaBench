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
typedef  int u32 ;
struct mxs_auart_port {int mctrl_prev; int* gpio_irq; int /*<<< orphan*/  port; scalar_t__ ms_irq_enabled; int /*<<< orphan*/  gpios; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AUART_INTR_CTSMIS ; 
 int AUART_INTR_RTIS ; 
 int AUART_INTR_RXIS ; 
 int AUART_INTR_TXIS ; 
 int AUART_STAT_CTS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_INTR ; 
 int /*<<< orphan*/  REG_STAT ; 
 size_t UART_GPIO_CTS ; 
 size_t UART_GPIO_DCD ; 
 size_t UART_GPIO_DSR ; 
 size_t UART_GPIO_RI ; 
 int /*<<< orphan*/  FUNC1 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *context)
{
	u32 istat;
	struct mxs_auart_port *s = context;
	u32 mctrl_temp = s->mctrl_prev;
	u32 stat = FUNC7(s, REG_STAT);

	istat = FUNC7(s, REG_INTR);

	/* ack irq */
	FUNC6(istat & (AUART_INTR_RTIS | AUART_INTR_TXIS | AUART_INTR_RXIS
		| AUART_INTR_CTSMIS), s, REG_INTR);

	/*
	 * Dealing with GPIO interrupt
	 */
	if (irq == s->gpio_irq[UART_GPIO_CTS] ||
	    irq == s->gpio_irq[UART_GPIO_DCD] ||
	    irq == s->gpio_irq[UART_GPIO_DSR] ||
	    irq == s->gpio_irq[UART_GPIO_RI])
		FUNC3(s,
				FUNC2(s->gpios, &mctrl_temp));

	if (istat & AUART_INTR_CTSMIS) {
		if (FUNC0() && s->ms_irq_enabled)
			FUNC8(&s->port,
					stat & AUART_STAT_CTS);
		FUNC6(AUART_INTR_CTSMIS, s, REG_INTR);
		istat &= ~AUART_INTR_CTSMIS;
	}

	if (istat & (AUART_INTR_RTIS | AUART_INTR_RXIS)) {
		if (!FUNC1(s))
			FUNC4(s);
		istat &= ~(AUART_INTR_RTIS | AUART_INTR_RXIS);
	}

	if (istat & AUART_INTR_TXIS) {
		FUNC5(s);
		istat &= ~AUART_INTR_TXIS;
	}

	return IRQ_HANDLED;
}