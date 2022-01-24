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
struct sci_port {scalar_t__ autorts; struct mctrl_gpios* gpios; } ;
struct mctrl_gpios {int dummy; } ;

/* Variables and functions */
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 int /*<<< orphan*/  UART_GPIO_CTS ; 
 int /*<<< orphan*/  UART_GPIO_DCD ; 
 int /*<<< orphan*/  UART_GPIO_DSR ; 
 int /*<<< orphan*/  FUNC0 (struct mctrl_gpios*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mctrl_gpios*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 struct sci_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static unsigned int FUNC4(struct uart_port *port)
{
	struct sci_port *s = FUNC3(port);
	struct mctrl_gpios *gpios = s->gpios;
	unsigned int mctrl = 0;

	FUNC0(gpios, &mctrl);

	/*
	 * CTS/RTS is handled in hardware when supported, while nothing
	 * else is wired up.
	 */
	if (s->autorts) {
		if (FUNC2(port))
			mctrl |= TIOCM_CTS;
	} else if (!FUNC1(gpios, UART_GPIO_CTS)) {
		mctrl |= TIOCM_CTS;
	}
	if (!FUNC1(gpios, UART_GPIO_DSR))
		mctrl |= TIOCM_DSR;
	if (!FUNC1(gpios, UART_GPIO_DCD))
		mctrl |= TIOCM_CAR;

	return mctrl;
}