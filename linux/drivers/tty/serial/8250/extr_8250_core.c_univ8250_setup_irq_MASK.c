#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct uart_8250_port {int bugs; TYPE_1__ timer; struct uart_port port; } ;

/* Variables and functions */
 int HZ ; 
 int UART_BUG_THRE ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serial8250_backup_timeout ; 
 int FUNC2 (struct uart_8250_port*) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 

__attribute__((used)) static int FUNC4(struct uart_8250_port *up)
{
	struct uart_port *port = &up->port;
	int retval = 0;

	/*
	 * The above check will only give an accurate result the first time
	 * the port is opened so this value needs to be preserved.
	 */
	if (up->bugs & UART_BUG_THRE) {
		FUNC1("%s - using backup timer\n", port->name);

		up->timer.function = serial8250_backup_timeout;
		FUNC0(&up->timer, jiffies +
			  FUNC3(port) + HZ / 5);
	}

	/*
	 * If the "interrupt" for this port doesn't correspond with any
	 * hardware interrupt, we use a timer-based system.  The original
	 * driver used to do this with IRQ0.
	 */
	if (!port->irq) {
		FUNC0(&up->timer, jiffies + FUNC3(port));
	} else
		retval = FUNC2(up);

	return retval;
}