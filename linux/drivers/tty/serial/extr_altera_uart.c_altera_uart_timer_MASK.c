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
struct timer_list {int dummy; } ;
struct altera_uart {int /*<<< orphan*/  tmr; struct uart_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 struct altera_uart* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct altera_uart* pp ; 
 int /*<<< orphan*/  tmr ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct altera_uart *pp = FUNC1(pp, t, tmr);
	struct uart_port *port = &pp->port;

	FUNC0(0, port);
	FUNC2(&pp->tmr, jiffies + FUNC3(port));
}