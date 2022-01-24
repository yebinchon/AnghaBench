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
typedef  int u16 ;
struct uart_port {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ PORT_SCIFA ; 
 scalar_t__ PORT_SCIFB ; 
 int /*<<< orphan*/  SCPCR ; 
 int SCPCR_RTSC ; 
 int /*<<< orphan*/  SCPDR ; 
 int SCPDR_RTSD ; 
 int /*<<< orphan*/  SCSPTR ; 
 int SCSPTR_RTSDT ; 
 TYPE_1__* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, bool state)
{
	if (port->type == PORT_SCIFA || port->type == PORT_SCIFB) {
		u16 data = FUNC1(port, SCPDR);

		/* Active low */
		if (state)
			data &= ~SCPDR_RTSD;
		else
			data |= SCPDR_RTSD;
		FUNC2(port, SCPDR, data);

		/* RTS# is output */
		FUNC2(port, SCPCR,
				FUNC1(port, SCPCR) | SCPCR_RTSC);
	} else if (FUNC0(port, SCSPTR)->size) {
		u16 ctrl = FUNC1(port, SCSPTR);

		/* Active low */
		if (state)
			ctrl &= ~SCSPTR_RTSDT;
		else
			ctrl |= SCSPTR_RTSDT;
		FUNC2(port, SCSPTR, ctrl);
	}
}