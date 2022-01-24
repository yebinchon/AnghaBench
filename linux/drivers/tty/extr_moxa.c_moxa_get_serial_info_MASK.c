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
struct tty_struct {scalar_t__ index; struct moxa_port* driver_data; } ;
struct serial_struct {int baud_base; int /*<<< orphan*/  close_delay; int /*<<< orphan*/  flags; int /*<<< orphan*/  line; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  close_delay; int /*<<< orphan*/  flags; TYPE_1__* tty; } ;
struct moxa_port {TYPE_2__ port; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty,
		struct serial_struct *ss)
{
	struct moxa_port *info = tty->driver_data;

	if (tty->index == MAX_PORTS)
		return -EINVAL;
	if (!info)
		return -ENODEV;
	FUNC0(&info->port.mutex);
	ss->type = info->type,
	ss->line = info->port.tty->index,
	ss->flags = info->port.flags,
	ss->baud_base = 921600,
	ss->close_delay = info->port.close_delay;
	FUNC1(&info->port.mutex);
	return 0;
}