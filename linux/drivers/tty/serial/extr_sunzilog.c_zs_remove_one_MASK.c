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
struct uart_sunzilog_port {int /*<<< orphan*/  port; int /*<<< orphan*/  serio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uart_sunzilog_port*) ; 
 scalar_t__ FUNC1 (struct uart_sunzilog_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunzilog_reg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct uart_sunzilog_port *up)
{
	if (FUNC0(up) || FUNC1(up)) {
#ifdef CONFIG_SERIO
		serio_unregister_port(&up->serio);
#endif
	} else
		FUNC3(&sunzilog_reg, &up->port);
}