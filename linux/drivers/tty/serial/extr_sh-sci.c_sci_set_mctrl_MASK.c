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
struct sci_port {scalar_t__ autorts; int /*<<< orphan*/  has_rtscts; int /*<<< orphan*/  gpios; } ;
struct plat_sci_reg {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ PORT_SCIFA ; 
 scalar_t__ PORT_SCIFB ; 
 int /*<<< orphan*/  SCFCR ; 
 int SCFCR_LOOP ; 
 int SCFCR_MCE ; 
 int /*<<< orphan*/  SCPCR ; 
 int SCPCR_RTSC ; 
 unsigned int TIOCM_LOOP ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct plat_sci_reg* FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 struct sci_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port, unsigned int mctrl)
{
	struct sci_port *s = FUNC5(port);

	if (mctrl & TIOCM_LOOP) {
		const struct plat_sci_reg *reg;

		/*
		 * Standard loopback mode for SCFCR ports.
		 */
		reg = FUNC1(port, SCFCR);
		if (reg->size)
			FUNC4(port, SCFCR,
					FUNC3(port, SCFCR) |
					SCFCR_LOOP);
	}

	FUNC0(s->gpios, mctrl);

	if (!s->has_rtscts)
		return;

	if (!(mctrl & TIOCM_RTS)) {
		/* Disable Auto RTS */
		FUNC4(port, SCFCR,
				FUNC3(port, SCFCR) & ~SCFCR_MCE);

		/* Clear RTS */
		FUNC2(port, 0);
	} else if (s->autorts) {
		if (port->type == PORT_SCIFA || port->type == PORT_SCIFB) {
			/* Enable RTS# pin function */
			FUNC4(port, SCPCR,
				FUNC3(port, SCPCR) & ~SCPCR_RTSC);
		}

		/* Enable Auto RTS */
		FUNC4(port, SCFCR,
				FUNC3(port, SCFCR) | SCFCR_MCE);
	} else {
		/* Set RTS */
		FUNC2(port, 1);
	}
}