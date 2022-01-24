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
struct tty_struct {scalar_t__ index; struct mxser_port* driver_data; } ;
struct tty_port {int /*<<< orphan*/  mutex; } ;
struct mxser_port {int closing; struct tty_port port; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ MXSER_PORTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_port*,struct tty_struct*,struct file*) ; 
 scalar_t__ FUNC8 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_port*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct tty_struct *tty, struct file *filp)
{
	struct mxser_port *info = tty->driver_data;
	struct tty_port *port = &info->port;

	if (tty->index == MXSER_PORTS || info == NULL)
		return;
	if (FUNC7(port, tty, filp) == 0)
		return;
	info->closing = 1;
	FUNC1(&port->mutex);
	FUNC3(port);
	FUNC4(tty);
	if (FUNC8(port) && FUNC0(tty))
		FUNC9(port);
	FUNC5(port);
	FUNC10(port, 0);
	FUNC2(&port->mutex);
	info->closing = 0;
	/* Right now the tty_port set is done outside of the close_end helper
	   as we don't yet have everyone using refcounts */	
	FUNC6(port, tty);
	FUNC11(port, NULL);
}