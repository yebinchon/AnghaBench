#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; struct isi_port* driver_data; } ;
struct serial_struct {int flags; scalar_t__ close_delay; scalar_t__ closing_wait; } ;
struct TYPE_4__ {int flags; scalar_t__ close_delay; scalar_t__ closing_wait; int /*<<< orphan*/  mutex; } ;
struct isi_port {TYPE_2__ port; TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 int ASYNC_FLAGS ; 
 int ASYNC_SPD_MASK ; 
 int ASYNC_USR_MASK ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct isi_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty,
					struct serial_struct *ss)
{
	struct isi_port *port = tty->driver_data;
	int reconfig_port;

	if (FUNC2(port, tty->name, "isicom_ioctl"))
		return -ENODEV;

	FUNC3(&port->port.mutex);
	reconfig_port = ((port->port.flags & ASYNC_SPD_MASK) !=
		(ss->flags & ASYNC_SPD_MASK));

	if (!FUNC0(CAP_SYS_ADMIN)) {
		if ((ss->close_delay != port->port.close_delay) ||
				(ss->closing_wait != port->port.closing_wait) ||
				((ss->flags & ~ASYNC_USR_MASK) !=
				(port->port.flags & ~ASYNC_USR_MASK))) {
			FUNC4(&port->port.mutex);
			return -EPERM;
		}
		port->port.flags = ((port->port.flags & ~ASYNC_USR_MASK) |
				(ss->flags & ASYNC_USR_MASK));
	} else {
		port->port.close_delay = ss->close_delay;
		port->port.closing_wait = ss->closing_wait;
		port->port.flags = ((port->port.flags & ~ASYNC_FLAGS) |
				(ss->flags & ASYNC_FLAGS));
	}
	if (reconfig_port) {
		unsigned long flags;
		FUNC5(&port->card->card_lock, flags);
		FUNC1(tty);
		FUNC6(&port->card->card_lock, flags);
	}
	FUNC4(&port->port.mutex);
	return 0;
}