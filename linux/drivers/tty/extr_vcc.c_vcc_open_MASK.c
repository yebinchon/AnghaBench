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
struct TYPE_3__ {int /*<<< orphan*/  lp; } ;
struct vcc_port {TYPE_1__ vio; } ;
struct tty_struct {int count; TYPE_2__* port; int /*<<< orphan*/  index; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENXIO ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_2__*,struct tty_struct*,struct file*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct vcc_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vcc_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, struct file *vcc_file)
{
	struct vcc_port *port;

	if (FUNC2(!tty)) {
		FUNC0("VCC: open: Invalid TTY handle\n");
		return -ENXIO;
	}

	if (tty->count > 1)
		return -EBUSY;

	port = FUNC3(tty->index);
	if (FUNC2(!port)) {
		FUNC0("VCC: open: Failed to find VCC port\n");
		return -ENODEV;
	}

	if (FUNC2(!port->vio.lp)) {
		FUNC0("VCC: open: LDC channel not configured\n");
		FUNC4(port, false);
		return -EPIPE;
	}
	FUNC5(port->vio.lp);

	FUNC4(port, false);

	if (FUNC2(!tty->port)) {
		FUNC0("VCC: open: TTY port not found\n");
		return -ENXIO;
	}

	if (FUNC2(!tty->port->ops)) {
		FUNC0("VCC: open: TTY ops not defined\n");
		return -ENXIO;
	}

	return FUNC1(tty->port, tty, vcc_file);
}