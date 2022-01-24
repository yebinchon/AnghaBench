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
struct mxs_auart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUART_LINECTRL_BRK ; 
 int /*<<< orphan*/  REG_LINECTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 struct mxs_auart_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *u, int ctl)
{
	struct mxs_auart_port *s = FUNC2(u);

	if (ctl)
		FUNC1(AUART_LINECTRL_BRK, s, REG_LINECTRL);
	else
		FUNC0(AUART_LINECTRL_BRK, s, REG_LINECTRL);
}