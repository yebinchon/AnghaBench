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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct tegra_uart_port {unsigned long ier_shadow; int /*<<< orphan*/  use_rx_pio; scalar_t__ rx_in_progress; struct uart_port uport; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long TEGRA_UART_IER_EORD ; 
 int /*<<< orphan*/  UART_IER ; 
 unsigned long UART_IER_RDI ; 
 unsigned long UART_IER_RLSI ; 
 unsigned long UART_IER_RTOIE ; 
 unsigned long UART_IER_THRI ; 
 int /*<<< orphan*/  UART_IIR ; 
 unsigned long UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_uart_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_uart_port*) ; 
 unsigned long FUNC7 (struct tegra_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_uart_port*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct tegra_uart_port *tup = data;
	struct uart_port *u = &tup->uport;
	unsigned long iir;
	unsigned long ier;
	bool is_rx_int = false;
	unsigned long flags;

	FUNC1(&u->lock, flags);
	while (1) {
		iir = FUNC7(tup, UART_IIR);
		if (iir & UART_IIR_NO_INT) {
			if (!tup->use_rx_pio && is_rx_int) {
				FUNC5(tup);
				if (tup->rx_in_progress) {
					ier = tup->ier_shadow;
					ier |= (UART_IER_RLSI | UART_IER_RTOIE |
						TEGRA_UART_IER_EORD);
					tup->ier_shadow = ier;
					FUNC8(tup, ier, UART_IER);
				}
			}
			FUNC2(&u->lock, flags);
			return IRQ_HANDLED;
		}

		switch ((iir >> 1) & 0x7) {
		case 0: /* Modem signal change interrupt */
			FUNC4(u);
			break;

		case 1: /* Transmit interrupt only triggered when using PIO */
			tup->ier_shadow &= ~UART_IER_THRI;
			FUNC8(tup, tup->ier_shadow, UART_IER);
			FUNC6(tup);
			break;

		case 4: /* End of data */
		case 6: /* Rx timeout */
		case 2: /* Receive */
			if (!tup->use_rx_pio && !is_rx_int) {
				is_rx_int = true;
				/* Disable Rx interrupts */
				ier = tup->ier_shadow;
				ier |= UART_IER_RDI;
				FUNC8(tup, ier, UART_IER);
				ier &= ~(UART_IER_RDI | UART_IER_RLSI |
					UART_IER_RTOIE | TEGRA_UART_IER_EORD);
				tup->ier_shadow = ier;
				FUNC8(tup, ier, UART_IER);
			} else {
				FUNC0(tup);
			}
			break;

		case 3: /* Receive error */
			FUNC3(tup,
					FUNC7(tup, UART_LSR));
			break;

		case 5: /* break nothing to handle */
		case 7: /* break nothing to handle */
			break;
		}
	}
}