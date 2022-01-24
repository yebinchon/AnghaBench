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
struct uart_8250_port {scalar_t__ gpios; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_MCR ; 
 unsigned int FUNC0 (scalar_t__,unsigned int*) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct uart_8250_port *up)
{
	int mctrl;

	mctrl = FUNC2(up, UART_MCR);

	if (up->gpios) {
		unsigned int mctrl_gpio = 0;

		mctrl_gpio = FUNC0(up->gpios, &mctrl_gpio);
		mctrl |= FUNC1(mctrl_gpio);
	}

	return mctrl;
}