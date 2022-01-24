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
struct vcc_port {struct tty_struct* tty; } ;
struct tty_struct {scalar_t__ index; struct tty_port* port; } ;
struct tty_port {int /*<<< orphan*/ * ops; } ;
struct tty_driver {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ VCC_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (struct tty_port*) ; 
 struct tty_port* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int FUNC4 (struct tty_driver*,struct tty_struct*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct vcc_port* FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  vcc_port_ops ; 
 int /*<<< orphan*/  FUNC7 (struct vcc_port*,int) ; 

__attribute__((used)) static int FUNC8(struct tty_driver *driver, struct tty_struct *tty)
{
	struct vcc_port *port_vcc;
	struct tty_port *port_tty;
	int ret;

	if (FUNC5(!tty)) {
		FUNC2("VCC: install: Invalid TTY handle\n");
		return -ENXIO;
	}

	if (tty->index >= VCC_MAX_PORTS)
		return -EINVAL;

	ret = FUNC4(driver, tty);
	if (ret)
		return ret;

	port_tty = FUNC1(sizeof(struct tty_port), GFP_KERNEL);
	if (!port_tty)
		return -ENOMEM;

	port_vcc = FUNC6(tty->index, true);
	if (!port_vcc) {
		FUNC2("VCC: install: Failed to find VCC port\n");
		tty->port = NULL;
		FUNC0(port_tty);
		return -ENODEV;
	}

	FUNC3(port_tty);
	port_tty->ops = &vcc_port_ops;
	tty->port = port_tty;

	port_vcc->tty = tty;

	FUNC7(port_vcc, true);

	return 0;
}