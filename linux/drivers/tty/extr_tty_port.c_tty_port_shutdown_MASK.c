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
struct tty_struct {int dummy; } ;
struct tty_port {int /*<<< orphan*/  mutex; TYPE_1__* ops; scalar_t__ console; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct tty_port*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 scalar_t__ FUNC4 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct tty_port *port, struct tty_struct *tty)
{
	FUNC1(&port->mutex);
	if (port->console)
		goto out;

	if (FUNC4(port)) {
		FUNC6(port, 0);
		/*
		 * Drop DTR/RTS if HUPCL is set. This causes any attached
		 * modem to hang up the line.
		 */
		if (tty && FUNC0(tty))
			FUNC5(port);

		if (port->ops->shutdown)
			port->ops->shutdown(port);
	}
out:
	FUNC2(&port->mutex);
}