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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSCR ; 
 unsigned short SCSCR_TE ; 
 int /*<<< orphan*/  SCSPTR ; 
 unsigned short SCSPTR_SPB2DT ; 
 unsigned short SCSPTR_SPB2IO ; 
 TYPE_1__* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port, int break_state)
{
	unsigned short scscr, scsptr;
	unsigned long flags;

	/* check wheter the port has SCSPTR */
	if (!FUNC0(port, SCSPTR)->size) {
		/*
		 * Not supported by hardware. Most parts couple break and rx
		 * interrupts together, with break detection always enabled.
		 */
		return;
	}

	FUNC3(&port->lock, flags);
	scsptr = FUNC1(port, SCSPTR);
	scscr = FUNC1(port, SCSCR);

	if (break_state == -1) {
		scsptr = (scsptr | SCSPTR_SPB2IO) & ~SCSPTR_SPB2DT;
		scscr &= ~SCSCR_TE;
	} else {
		scsptr = (scsptr | SCSPTR_SPB2DT) & ~SCSPTR_SPB2IO;
		scscr |= SCSCR_TE;
	}

	FUNC2(port, SCSPTR, scsptr);
	FUNC2(port, SCSCR, scscr);
	FUNC4(&port->lock, flags);
}