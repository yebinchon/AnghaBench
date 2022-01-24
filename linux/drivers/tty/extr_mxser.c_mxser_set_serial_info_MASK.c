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
struct tty_struct {scalar_t__ index; struct mxser_port* driver_data; } ;
struct tty_port {unsigned int flags; scalar_t__ close_delay; int closing_wait; int low_latency; int /*<<< orphan*/  mutex; } ;
struct serial_struct {scalar_t__ irq; scalar_t__ port; scalar_t__ baud_base; scalar_t__ close_delay; int flags; int closing_wait; scalar_t__ custom_divisor; int /*<<< orphan*/  type; } ;
struct mxser_port {scalar_t__ ioaddr; scalar_t__ baud_base; scalar_t__ custom_divisor; int /*<<< orphan*/  slock; int /*<<< orphan*/  type; struct tty_port port; TYPE_1__* board; } ;
typedef  int speed_t ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int ASYNC_FLAGS ; 
 int ASYNC_LOW_LATENCY ; 
 unsigned int ASYNC_SPD_CUST ; 
 unsigned int ASYNC_SPD_MASK ; 
 int ASYNC_USR_MASK ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOTTY ; 
 int EPERM ; 
 int HZ ; 
 scalar_t__ MXSER_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tty_port*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mxser_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,int,int) ; 
 scalar_t__ FUNC9 (struct tty_struct*) ; 
 scalar_t__ FUNC10 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_port*,int) ; 

__attribute__((used)) static int FUNC12(struct tty_struct *tty,
		struct serial_struct *ss)
{
	struct mxser_port *info = tty->driver_data;
	struct tty_port *port = &info->port;
	speed_t baud;
	unsigned long sl_flags;
	unsigned int flags;
	int retval = 0;

	if (tty->index == MXSER_PORTS)
		return -ENOTTY;
	if (FUNC9(tty))
		return -EIO;

	FUNC1(&port->mutex);
	if (!info->ioaddr) {
		FUNC2(&port->mutex);
		return -ENODEV;
	}

	if (ss->irq != info->board->irq ||
			ss->port != info->ioaddr) {
		FUNC2(&port->mutex);
		return -EINVAL;
	}

	flags = port->flags & ASYNC_SPD_MASK;

	if (!FUNC0(CAP_SYS_ADMIN)) {
		if ((ss->baud_base != info->baud_base) ||
				(ss->close_delay != info->port.close_delay) ||
				((ss->flags & ~ASYNC_USR_MASK) != (info->port.flags & ~ASYNC_USR_MASK))) {
			FUNC2(&port->mutex);
			return -EPERM;
		}
		info->port.flags = ((info->port.flags & ~ASYNC_USR_MASK) |
				(ss->flags & ASYNC_USR_MASK));
	} else {
		/*
		 * OK, past this point, all the error checking has been done.
		 * At this point, we start making changes.....
		 */
		port->flags = ((port->flags & ~ASYNC_FLAGS) |
				(ss->flags & ASYNC_FLAGS));
		port->close_delay = ss->close_delay * HZ / 100;
		port->closing_wait = ss->closing_wait * HZ / 100;
		port->low_latency = (port->flags & ASYNC_LOW_LATENCY) ? 1 : 0;
		if ((port->flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST &&
				(ss->baud_base != info->baud_base ||
				ss->custom_divisor !=
				info->custom_divisor)) {
			if (ss->custom_divisor == 0) {
				FUNC2(&port->mutex);
				return -EINVAL;
			}
			baud = ss->baud_base / ss->custom_divisor;
			FUNC8(tty, baud, baud);
		}
	}

	info->type = ss->type;

	FUNC5(info);

	if (FUNC10(port)) {
		if (flags != (port->flags & ASYNC_SPD_MASK)) {
			FUNC6(&info->slock, sl_flags);
			FUNC4(tty);
			FUNC7(&info->slock, sl_flags);
		}
	} else {
		retval = FUNC3(port, tty);
		if (retval == 0)
			FUNC11(port, 1);
	}
	FUNC2(&port->mutex);
	return retval;
}