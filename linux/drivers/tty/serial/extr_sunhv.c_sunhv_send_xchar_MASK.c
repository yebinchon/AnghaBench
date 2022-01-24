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
struct uart_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 long HV_EOK ; 
 char __DISABLED_CHAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 long FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, char ch)
{
	unsigned long flags;
	int limit = 10000;

	if (ch == __DISABLED_CHAR)
		return;

	FUNC0(&port->lock, flags);

	while (limit-- > 0) {
		long status = FUNC2(ch);
		if (status == HV_EOK)
			break;
		FUNC3(1);
	}

	FUNC1(&port->lock, flags);
}