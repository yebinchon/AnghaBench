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
struct TYPE_2__ {struct vcc_port* name; } ;
struct vcc_port {struct vcc_port* domain; TYPE_1__ vio; scalar_t__ removed; int /*<<< orphan*/ * tty; } ;
struct tty_struct {struct vcc_port* port; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vcc_port*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vcc_port*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct vcc_port* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vcc_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty)
{
	struct vcc_port *port;

	if (FUNC3(!tty)) {
		FUNC1("VCC: cleanup: Invalid TTY handle\n");
		return;
	}

	port = FUNC4(tty->index, true);
	if (port) {
		port->tty = NULL;

		if (port->removed) {
			FUNC6(tty->index);
			FUNC0(port->vio.name);
			FUNC0(port->domain);
			FUNC0(port);
		} else {
			FUNC5(port, true);
		}
	}

	FUNC2(tty->port);
	FUNC0(tty->port);
	tty->port = NULL;
}