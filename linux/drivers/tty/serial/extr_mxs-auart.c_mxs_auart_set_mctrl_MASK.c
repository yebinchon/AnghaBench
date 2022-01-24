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
typedef  int u32 ;
struct uart_port {int dummy; } ;
struct mxs_auart_port {int /*<<< orphan*/  gpios; } ;

/* Variables and functions */
 int AUART_CTRL2_RTS ; 
 int AUART_CTRL2_RTSEN ; 
 int /*<<< orphan*/  REG_CTRL2 ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 struct mxs_auart_port* FUNC3 (struct uart_port*) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *u, unsigned mctrl)
{
	struct mxs_auart_port *s = FUNC3(u);

	u32 ctrl = FUNC1(s, REG_CTRL2);

	ctrl &= ~(AUART_CTRL2_RTSEN | AUART_CTRL2_RTS);
	if (mctrl & TIOCM_RTS) {
		if (FUNC4(u))
			ctrl |= AUART_CTRL2_RTSEN;
		else
			ctrl |= AUART_CTRL2_RTS;
	}

	FUNC2(ctrl, s, REG_CTRL2);

	FUNC0(s->gpios, mctrl);
}