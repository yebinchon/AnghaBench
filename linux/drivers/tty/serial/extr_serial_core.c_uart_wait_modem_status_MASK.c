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
struct tty_port {int /*<<< orphan*/  delta_msr_wait; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  icount; } ;
struct uart_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; scalar_t__ cts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 unsigned long TIOCM_CD ; 
 unsigned long TIOCM_CTS ; 
 unsigned long TIOCM_DSR ; 
 unsigned long TIOCM_RNG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct uart_icount*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*) ; 
 struct uart_port* FUNC12 (struct uart_state*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC13(struct uart_state *state, unsigned long arg)
{
	struct uart_port *uport;
	struct tty_port *port = &state->port;
	FUNC0(wait, current);
	struct uart_icount cprev, cnow;
	int ret;

	/*
	 * note the counters on entry
	 */
	uport = FUNC12(state);
	if (!uport)
		return -EIO;
	FUNC8(&uport->lock);
	FUNC3(&cprev, &uport->icount, sizeof(struct uart_icount));
	FUNC10(uport);
	FUNC9(&uport->lock);

	FUNC2(&port->delta_msr_wait, &wait);
	for (;;) {
		FUNC8(&uport->lock);
		FUNC3(&cnow, &uport->icount, sizeof(struct uart_icount));
		FUNC9(&uport->lock);

		FUNC6(TASK_INTERRUPTIBLE);

		if (((arg & TIOCM_RNG) && (cnow.rng != cprev.rng)) ||
		    ((arg & TIOCM_DSR) && (cnow.dsr != cprev.dsr)) ||
		    ((arg & TIOCM_CD)  && (cnow.dcd != cprev.dcd)) ||
		    ((arg & TIOCM_CTS) && (cnow.cts != cprev.cts))) {
			ret = 0;
			break;
		}

		FUNC5();

		/* see if a signal did it */
		if (FUNC7(current)) {
			ret = -ERESTARTSYS;
			break;
		}

		cprev = cnow;
	}
	FUNC1(TASK_RUNNING);
	FUNC4(&port->delta_msr_wait, &wait);
	FUNC11(uport);

	return ret;
}