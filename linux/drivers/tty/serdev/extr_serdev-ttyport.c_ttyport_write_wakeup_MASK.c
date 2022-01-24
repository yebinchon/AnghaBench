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
struct tty_struct {int /*<<< orphan*/  write_wait; int /*<<< orphan*/  flags; } ;
struct tty_port {struct serdev_controller* client_data; } ;
struct serport {int /*<<< orphan*/  flags; } ;
struct serdev_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERPORT_ACTIVE ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 struct serport* FUNC0 (struct serdev_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct serdev_controller*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 struct tty_struct* FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tty_port *port)
{
	struct serdev_controller *ctrl = port->client_data;
	struct serport *serport = FUNC0(ctrl);
	struct tty_struct *tty;

	tty = FUNC5(port);
	if (!tty)
		return;

	if (FUNC2(TTY_DO_WRITE_WAKEUP, &tty->flags) &&
	    FUNC3(SERPORT_ACTIVE, &serport->flags))
		FUNC1(ctrl);

	/* Wake up any tty_wait_until_sent() */
	FUNC6(&tty->write_wait);

	FUNC4(tty);
}