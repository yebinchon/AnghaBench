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
 int AUART_STAT_CTS ; 
 int /*<<< orphan*/  REG_STAT ; 
 int TIOCM_CTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 struct mxs_auart_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static u32 FUNC3(struct uart_port *u)
{
	struct mxs_auart_port *s = FUNC2(u);
	u32 stat = FUNC1(s, REG_STAT);
	u32 mctrl = 0;

	if (stat & AUART_STAT_CTS)
		mctrl |= TIOCM_CTS;

	return FUNC0(s->gpios, &mctrl);
}