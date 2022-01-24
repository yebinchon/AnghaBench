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
struct parport {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* data_forward ) (struct parport*) ;int /*<<< orphan*/  (* data_reverse ) (struct parport*) ;} ;

/* Variables and functions */
 int PARPORT_CONTROL_AUTOFD ; 
 int PARPORT_CONTROL_INIT ; 
 int PARPORT_CONTROL_SELECT ; 
 int PARPORT_CONTROL_STROBE ; 
 int /*<<< orphan*/  PARPORT_STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct parport*,int,int) ; 
 scalar_t__ FUNC1 (struct parport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC2 (struct parport*) ; 
 scalar_t__ FUNC3 (struct parport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct parport*) ; 
 int /*<<< orphan*/  FUNC5 (struct parport*) ; 

size_t FUNC6 (struct parport *port,
				       void *buffer, size_t len,
				       int flags)
{
	unsigned char *bp = (unsigned char *) buffer;
	unsigned ret = 0;

	/* Set EPP idle state (just to make sure) with strobe high */
	FUNC0 (port,
			      PARPORT_CONTROL_STROBE |
			      PARPORT_CONTROL_AUTOFD |
			      PARPORT_CONTROL_SELECT |
			      PARPORT_CONTROL_INIT,
			      PARPORT_CONTROL_INIT);
	port->ops->data_reverse (port);
	for (; len > 0; len--, bp++) {
		/* Event 64: set nSelectIn (nAStrb) low */
		FUNC0 (port, PARPORT_CONTROL_SELECT,
				      PARPORT_CONTROL_SELECT);

		/* Event 58: wait for Busy to go high */
		if (FUNC3 (port, PARPORT_STATUS_BUSY, 0)) {
			break;
		}

		*bp = FUNC2 (port);

		/* Event 59: set nSelectIn (nAStrb) high */
		FUNC0 (port, PARPORT_CONTROL_SELECT,
				      0);

		/* Event 60: wait for Busy to go low */
		if (FUNC1 (port, PARPORT_STATUS_BUSY, 
					     PARPORT_STATUS_BUSY, 5))
			break;

		ret++;
	}
	port->ops->data_forward (port);

	return ret;
}