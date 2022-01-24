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
struct tty_driver {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct fwtty_port {int /*<<< orphan*/  index; TYPE_1__ port; } ;

/* Variables and functions */
 struct tty_driver* fwloop_driver ; 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 struct tty_struct* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC7(struct tty_driver *driver,
				struct fwtty_port *port)
{
	struct tty_struct *tty;

	FUNC1(&port->port.mutex);
	tty = FUNC4(&port->port);
	if (tty) {
		FUNC6(tty);
		FUNC3(tty);
	}
	FUNC2(&port->port.mutex);

	if (driver == fwloop_driver)
		FUNC5(driver, FUNC0(port));
	else
		FUNC5(driver, port->index);
}