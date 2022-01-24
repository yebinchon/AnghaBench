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
struct tegra_uart_port {int rts_active; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_LOOP ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_uart_port*,int) ; 
 struct tegra_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *u, unsigned int mctrl)
{
	struct tegra_uart_port *tup = FUNC3(u);
	int enable;

	tup->rts_active = !!(mctrl & TIOCM_RTS);
	FUNC2(tup, tup->rts_active);

	enable = !!(mctrl & TIOCM_DTR);
	FUNC0(tup, enable);

	enable = !!(mctrl & TIOCM_LOOP);
	FUNC1(tup, enable);
}