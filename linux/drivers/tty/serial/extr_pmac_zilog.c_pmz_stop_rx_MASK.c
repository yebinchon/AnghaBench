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
struct uart_pmac_port {int /*<<< orphan*/ * curregs; } ;

/* Variables and functions */
 size_t R1 ; 
 int /*<<< orphan*/  RxINT_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_pmac_port*) ; 
 struct uart_pmac_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct uart_pmac_port *uap = FUNC2(port);

	FUNC0("pmz: stop_rx()()\n");

	/* Disable all RX interrupts.  */
	uap->curregs[R1] &= ~RxINT_MASK;
	FUNC1(uap);

	FUNC0("pmz: stop_rx() done.\n");
}