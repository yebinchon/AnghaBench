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
struct uart_port {scalar_t__ type; } ;
struct sci_port {unsigned int hscif_tot; int rx_trigger; int /*<<< orphan*/  rx_fifo_timer; scalar_t__ rx_fifo_timeout; } ;
struct plat_sci_reg {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ PORT_SCIFA ; 
 scalar_t__ PORT_SCIFB ; 
 int /*<<< orphan*/  SCFCR ; 
 unsigned int SCFCR_RFRST ; 
 unsigned int SCFCR_TFRST ; 
 int /*<<< orphan*/  SCLSR ; 
 unsigned int SCLSR_ORER ; 
 unsigned int SCLSR_TO ; 
 int /*<<< orphan*/  SCSCR ; 
 int FUNC0 (struct uart_port*) ; 
 int FUNC1 (struct uart_port*) ; 
 int FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  rx_fifo_timer_fn ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int) ; 
 struct plat_sci_reg* FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int) ; 
 unsigned int FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sci_port* FUNC9 (struct uart_port*) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	const struct plat_sci_reg *reg;
	unsigned int status;
	struct sci_port *s = FUNC9(port);

	FUNC7(port, SCSCR, s->hscif_tot);	/* TE=0, RE=0, CKE1=0 */

	reg = FUNC4(port, SCFCR);
	if (reg->size)
		FUNC7(port, SCFCR, SCFCR_RFRST | SCFCR_TFRST);

	FUNC3(port,
			FUNC2(port) & FUNC1(port) &
			FUNC0(port));
	if (FUNC4(port, SCLSR)->size) {
		status = FUNC6(port, SCLSR);
		status &= ~(SCLSR_TO | SCLSR_ORER);
		FUNC7(port, SCLSR, status);
	}

	if (s->rx_trigger > 1) {
		if (s->rx_fifo_timeout) {
			FUNC5(port, 1);
			FUNC8(&s->rx_fifo_timer, rx_fifo_timer_fn, 0);
		} else {
			if (port->type == PORT_SCIFA ||
			    port->type == PORT_SCIFB)
				FUNC5(port, 1);
			else
				FUNC5(port, s->rx_trigger);
		}
	}
}