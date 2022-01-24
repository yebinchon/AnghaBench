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
struct vcc_port {int /*<<< orphan*/  lock; } ;
struct tty_struct {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  VCC_CTL_BREAK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 struct vcc_port* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vcc_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct vcc_port*,int) ; 
 scalar_t__ FUNC7 (struct vcc_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty, int state)
{
	struct vcc_port *port;
	unsigned long flags;

	if (FUNC3(!tty)) {
		FUNC0("VCC: break_ctl: Invalid TTY handle\n");
		return -ENXIO;
	}

	port = FUNC4(tty->index);
	if (FUNC3(!port)) {
		FUNC0("VCC: break_ctl: Failed to find VCC port\n");
		return -ENODEV;
	}

	/* Turn off break */
	if (state == 0) {
		FUNC6(port, false);
		return 0;
	}

	FUNC1(&port->lock, flags);

	if (FUNC7(port, VCC_CTL_BREAK) < 0)
		FUNC5(port);

	FUNC2(&port->lock, flags);

	FUNC6(port, false);

	return 0;
}