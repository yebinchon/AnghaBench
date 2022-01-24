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
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; int /*<<< orphan*/  cons; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *uport)
{
	unsigned long flags;

	/* Stop the console before stopping the current tx */
	if (FUNC6(uport))
		FUNC0(uport->cons);

	FUNC1(uport->irq, uport);
	FUNC4(&uport->lock, flags);
	FUNC3(uport);
	FUNC2(uport);
	FUNC5(&uport->lock, flags);
}