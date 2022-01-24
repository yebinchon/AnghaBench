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
typedef  int u8 ;
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int QOPR_CLOCK_RATE_MASK ; 
 int QOPR_CLOCK_X1 ; 
 int QOPR_CLOCK_X2 ; 
 int QOPR_CLOCK_X4 ; 
 int QOPR_CLOCK_X8 ; 
 int FUNC0 (struct uart_8250_port*) ; 
 scalar_t__ FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,int) ; 

__attribute__((used)) static int FUNC3(struct uart_8250_port *port)
{
	u8 qopr, reg, set;
	unsigned long clock;

	if (FUNC1(port) < 0)
		return 1843200;

	qopr = FUNC0(port);

	FUNC2(port, qopr & ~QOPR_CLOCK_X8);
	reg = FUNC0(port);
	if (reg & QOPR_CLOCK_X8) {
		clock = 1843200;
		goto out;
	}
	FUNC2(port, qopr | QOPR_CLOCK_X8);
	reg = FUNC0(port);
	if (!(reg & QOPR_CLOCK_X8)) {
		clock = 1843200;
		goto out;
	}
	reg &= QOPR_CLOCK_X8;
	if (reg == QOPR_CLOCK_X2) {
		clock =  3685400;
		set = QOPR_CLOCK_X2;
	} else if (reg == QOPR_CLOCK_X4) {
		clock = 7372800;
		set = QOPR_CLOCK_X4;
	} else if (reg == QOPR_CLOCK_X8) {
		clock = 14745600;
		set = QOPR_CLOCK_X8;
	} else {
		clock = 1843200;
		set = QOPR_CLOCK_X1;
	}
	qopr &= ~QOPR_CLOCK_RATE_MASK;
	qopr |= set;

out:
	FUNC2(port, qopr);
	return clock;
}