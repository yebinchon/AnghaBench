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
struct vcc_port {int dummy; } ;
struct tty_struct {int /*<<< orphan*/  port; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 struct vcc_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vcc_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct vcc_port*,int) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	struct vcc_port *port;

	if (FUNC2(!tty)) {
		FUNC0("VCC: hangup: Invalid TTY handle\n");
		return;
	}

	port = FUNC3(tty->index);
	if (FUNC2(!port)) {
		FUNC0("VCC: hangup: Failed to find VCC port\n");
		return;
	}

	if (FUNC2(!tty->port)) {
		FUNC0("VCC: hangup: TTY port not found\n");
		FUNC5(port, false);
		return;
	}

	FUNC4(port);

	FUNC5(port, false);

	FUNC1(tty->port);
}