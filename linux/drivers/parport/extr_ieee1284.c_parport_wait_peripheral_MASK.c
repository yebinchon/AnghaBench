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
struct parport {TYPE_2__* physport; } ;
struct TYPE_4__ {int spintime; TYPE_1__* cad; } ;
struct TYPE_3__ {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  current ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (struct parport*,unsigned char,unsigned char,int) ; 
 unsigned char FUNC2 (struct parport*) ; 
 int FUNC3 (struct parport*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

int FUNC7(struct parport *port,
			    unsigned char mask, 
			    unsigned char result)
{
	int ret;
	int usec;
	unsigned long deadline;
	unsigned char status;

	usec = port->physport->spintime; /* usecs of fast polling */
	if (!port->physport->cad->timeout)
		/* A zero timeout is "special": busy wait for the
		   entire 35ms. */
		usec = 35000;

	/* Fast polling.
	 *
	 * This should be adjustable.
	 * How about making a note (in the device structure) of how long
	 * it takes, so we know for next time?
	 */
	ret = FUNC1 (port, mask, result, usec);
	if (ret != 1)
		return ret;

	if (!port->physport->cad->timeout)
		/* We may be in an interrupt handler, so we can't poll
		 * slowly anyway. */
		return 1;

	/* 40ms of slow polling. */
	deadline = jiffies + FUNC0(40);
	while (FUNC6 (jiffies, deadline)) {
		if (FUNC5 (current))
			return -EINTR;

		/* Wait for 10ms (or until an interrupt occurs if
		 * the handler is set) */
		if ((ret = FUNC3 (port, FUNC0(10))) < 0)
			return ret;

		status = FUNC2 (port);
		if ((status & mask) == result)
			return 0;

		if (!ret) {
			/* parport_wait_event didn't time out, but the
			 * peripheral wasn't actually ready either.
			 * Wait for another 10ms. */
			FUNC4(FUNC0(10));
		}
	}

	return 1;
}