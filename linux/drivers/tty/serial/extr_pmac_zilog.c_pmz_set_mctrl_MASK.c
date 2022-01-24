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
 unsigned char DTR ; 
 size_t R5 ; 
 unsigned char RTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC1 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC2 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC3 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char,unsigned char,unsigned char) ; 
 struct uart_pmac_port* FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_pmac_port*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port, unsigned int mctrl)
{
	struct uart_pmac_port *uap = FUNC5(port);
	unsigned char set_bits, clear_bits;

        /* Do nothing for irda for now... */
	if (FUNC2(uap))
		return;
	/* We get called during boot with a port not up yet */
	if (!(FUNC3(uap) || FUNC0(uap)))
		return;

	set_bits = clear_bits = 0;

	if (FUNC1(uap)) {
		if (mctrl & TIOCM_RTS)
			set_bits |= RTS;
		else
			clear_bits |= RTS;
	}
	if (mctrl & TIOCM_DTR)
		set_bits |= DTR;
	else
		clear_bits |= DTR;

	/* NOTE: Not subject to 'transmitter active' rule.  */ 
	uap->curregs[R5] |= set_bits;
	uap->curregs[R5] &= ~clear_bits;

	FUNC6(uap, R5, uap->curregs[R5]);
	FUNC4("pmz_set_mctrl: set bits: %x, clear bits: %x -> %x\n",
		  set_bits, clear_bits, uap->curregs[R5]);
	FUNC7(uap);
}