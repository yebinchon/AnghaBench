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
struct uart_pmac_port {unsigned char* curregs; } ;

/* Variables and functions */
 size_t R5 ; 
 unsigned char SND_BRK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_pmac_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*,size_t,unsigned char) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int break_state)
{
	struct uart_pmac_port *uap = FUNC2(port);
	unsigned char set_bits, clear_bits, new_reg;
	unsigned long flags;

	set_bits = clear_bits = 0;

	if (break_state)
		set_bits |= SND_BRK;
	else
		clear_bits |= SND_BRK;

	FUNC0(&port->lock, flags);

	new_reg = (uap->curregs[R5] | set_bits) & ~clear_bits;
	if (new_reg != uap->curregs[R5]) {
		uap->curregs[R5] = new_reg;
		FUNC3(uap, R5, uap->curregs[R5]);
	}

	FUNC1(&port->lock, flags);
}