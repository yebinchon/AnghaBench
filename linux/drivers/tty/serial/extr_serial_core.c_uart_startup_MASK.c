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
struct tty_port {int dummy; } ;
struct uart_state {struct tty_port port; } ;
struct tty_struct {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct tty_port*) ; 
 int FUNC2 (struct tty_struct*,struct uart_state*,int) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, struct uart_state *state,
		int init_hw)
{
	struct tty_port *port = &state->port;
	int retval;

	if (FUNC1(port))
		return 0;

	retval = FUNC2(tty, state, init_hw);
	if (retval)
		FUNC0(TTY_IO_ERROR, &tty->flags);

	return retval;
}