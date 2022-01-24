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
struct uart_port {unsigned long uartclk; scalar_t__ membase; struct mid8250* private_data; } ;
struct mid8250 {TYPE_1__* board; } ;
struct ktermios {int dummy; } ;
struct TYPE_2__ {unsigned long freq; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ INTEL_MID_UART_DIV ; 
 scalar_t__ INTEL_MID_UART_MUL ; 
 scalar_t__ INTEL_MID_UART_PS ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long*,unsigned long*) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,struct ktermios*,struct ktermios*) ; 
 unsigned int FUNC4 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct uart_port *p,
				struct ktermios *termios,
				struct ktermios *old)
{
	unsigned int baud = FUNC4(termios);
	struct mid8250 *mid = p->private_data;
	unsigned short ps = 16;
	unsigned long fuart = baud * ps;
	unsigned long w = FUNC0(24) - 1;
	unsigned long mul, div;

	/* Gracefully handle the B0 case: fall back to B9600 */
	fuart = fuart ? fuart : 9600 * 16;

	if (mid->board->freq < fuart) {
		/* Find prescaler value that satisfies Fuart < Fref */
		if (mid->board->freq > baud)
			ps = mid->board->freq / baud;	/* baud rate too high */
		else
			ps = 1;				/* PLL case */
		fuart = baud * ps;
	} else {
		/* Get Fuart closer to Fref */
		fuart *= FUNC2(mid->board->freq / fuart);
	}

	FUNC1(fuart, mid->board->freq, w, w, &mul, &div);
	p->uartclk = fuart * 16 / ps;		/* core uses ps = 16 always */

	FUNC5(ps, p->membase + INTEL_MID_UART_PS);		/* set PS */
	FUNC5(mul, p->membase + INTEL_MID_UART_MUL);		/* set MUL */
	FUNC5(div, p->membase + INTEL_MID_UART_DIV);

	FUNC3(p, termios, old);
}