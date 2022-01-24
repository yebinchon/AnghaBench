#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct uart_port {scalar_t__ type; int mctrl; } ;
struct sci_port {int /*<<< orphan*/  autorts; scalar_t__ has_rtscts; TYPE_2__* cfg; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* init_pins ) (struct uart_port*,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ PORT_SCIFA ; 
 scalar_t__ PORT_SCIFB ; 
 int /*<<< orphan*/  SCPCR ; 
 int SCPCR_CTSC ; 
 int SCPCR_RTSC ; 
 int SCPCR_RXDC ; 
 int SCPCR_TXDC ; 
 int /*<<< orphan*/  SCPDR ; 
 int SCPDR_RTSD ; 
 int /*<<< orphan*/  SCSPTR ; 
 int SCSPTR_CTSIO ; 
 int SCSPTR_RTSDT ; 
 int SCSPTR_RTSIO ; 
 int SCSPTR_SCKIO ; 
 int TIOCM_RTS ; 
 TYPE_3__* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int) ; 
 struct sci_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port, unsigned int cflag)
{
	struct sci_port *s = FUNC4(port);

	/*
	 * Use port-specific handler if provided.
	 */
	if (s->cfg->ops && s->cfg->ops->init_pins) {
		s->cfg->ops->init_pins(port, cflag);
		return;
	}

	if (port->type == PORT_SCIFA || port->type == PORT_SCIFB) {
		u16 data = FUNC1(port, SCPDR);
		u16 ctrl = FUNC1(port, SCPCR);

		/* Enable RXD and TXD pin functions */
		ctrl &= ~(SCPCR_RXDC | SCPCR_TXDC);
		if (FUNC4(port)->has_rtscts) {
			/* RTS# is output, active low, unless autorts */
			if (!(port->mctrl & TIOCM_RTS)) {
				ctrl |= SCPCR_RTSC;
				data |= SCPDR_RTSD;
			} else if (!s->autorts) {
				ctrl |= SCPCR_RTSC;
				data &= ~SCPDR_RTSD;
			} else {
				/* Enable RTS# pin function */
				ctrl &= ~SCPCR_RTSC;
			}
			/* Enable CTS# pin function */
			ctrl &= ~SCPCR_CTSC;
		}
		FUNC2(port, SCPDR, data);
		FUNC2(port, SCPCR, ctrl);
	} else if (FUNC0(port, SCSPTR)->size) {
		u16 status = FUNC1(port, SCSPTR);

		/* RTS# is always output; and active low, unless autorts */
		status |= SCSPTR_RTSIO;
		if (!(port->mctrl & TIOCM_RTS))
			status |= SCSPTR_RTSDT;
		else if (!s->autorts)
			status &= ~SCSPTR_RTSDT;
		/* CTS# and SCK are inputs */
		status &= ~(SCSPTR_CTSIO | SCSPTR_SCKIO);
		FUNC2(port, SCSPTR, status);
	}
}