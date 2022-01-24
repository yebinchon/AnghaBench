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
struct tty_struct {int /*<<< orphan*/  flags; } ;
struct tty_port {int /*<<< orphan*/  console; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_port*,struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_port*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,int /*<<< orphan*/ *) ; 

void FUNC5(struct tty_port *port, struct tty_struct *tty,
							struct file *filp)
{
	if (FUNC2(port, tty, filp) == 0)
		return;
	FUNC3(port, tty);
	if (!port->console)
		FUNC0(TTY_IO_ERROR, &tty->flags);
	FUNC1(port, tty);
	FUNC4(port, NULL);
}