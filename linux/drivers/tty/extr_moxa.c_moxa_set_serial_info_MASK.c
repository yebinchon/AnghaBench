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
struct tty_struct {scalar_t__ index; struct moxa_port* driver_data; } ;
struct serial_struct {scalar_t__ irq; scalar_t__ port; scalar_t__ custom_divisor; int baud_base; int flags; int close_delay; scalar_t__ type; } ;
struct TYPE_2__ {int flags; int close_delay; int /*<<< orphan*/  mutex; } ;
struct moxa_port {scalar_t__ type; TYPE_1__ port; } ;

/* Variables and functions */
 int ASYNC_USR_MASK ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 int HZ ; 
 scalar_t__ MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (struct moxa_port*,int) ; 
 scalar_t__ PORT_16550A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
		struct serial_struct *ss)
{
	struct moxa_port *info = tty->driver_data;

	if (tty->index == MAX_PORTS)
		return -EINVAL;
	if (!info)
		return -ENODEV;

	if (ss->irq != 0 || ss->port != 0 ||
			ss->custom_divisor != 0 ||
			ss->baud_base != 921600)
		return -EPERM;

	FUNC2(&info->port.mutex);
	if (!FUNC1(CAP_SYS_ADMIN)) {
		if (((ss->flags & ~ASYNC_USR_MASK) !=
		     (info->port.flags & ~ASYNC_USR_MASK))) {
			FUNC3(&info->port.mutex);
			return -EPERM;
		}
	}
	info->port.close_delay = ss->close_delay * HZ / 100;

	FUNC0(info, ss->type == PORT_16550A);

	info->type = ss->type;
	FUNC3(&info->port.mutex);
	return 0;
}