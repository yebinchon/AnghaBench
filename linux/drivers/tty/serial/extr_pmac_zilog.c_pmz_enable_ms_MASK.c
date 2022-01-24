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
struct uart_pmac_port {unsigned char* curregs; } ;

/* Variables and functions */
 unsigned char CTSIE ; 
 unsigned char DCDIE ; 
 size_t R15 ; 
 unsigned char SYNCIE ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 struct uart_pmac_port* FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_pmac_port*,size_t,unsigned char) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct uart_pmac_port *uap = FUNC1(port);
	unsigned char new_reg;

	if (FUNC0(uap))
		return;
	new_reg = uap->curregs[R15] | (DCDIE | SYNCIE | CTSIE);
	if (new_reg != uap->curregs[R15]) {
		uap->curregs[R15] = new_reg;

		/* NOTE: Not subject to 'transmitter active' rule. */
		FUNC2(uap, R15, uap->curregs[R15]);
	}
}