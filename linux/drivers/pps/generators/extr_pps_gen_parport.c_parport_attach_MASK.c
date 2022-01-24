#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct parport {int /*<<< orphan*/  name; } ;
struct pardev_cb {int /*<<< orphan*/  flags; TYPE_1__* private; } ;
typedef  int /*<<< orphan*/  pps_cb ;
struct TYPE_7__ {int /*<<< orphan*/  function; } ;
struct TYPE_6__ {int /*<<< orphan*/  pardev; TYPE_2__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  PARPORT_FLAG_EXCL ; 
 int attached ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__ device ; 
 int /*<<< orphan*/  hrtimer_event ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pardev_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*,int /*<<< orphan*/ ,struct pardev_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct parport *port)
{
	struct pardev_cb pps_cb;

	if (attached) {
		/* we already have a port */
		return;
	}

	FUNC3(&pps_cb, 0, sizeof(pps_cb));
	pps_cb.private = &device;
	pps_cb.flags = PARPORT_FLAG_EXCL;
	device.pardev = FUNC6(port, KBUILD_MODNAME,
						   &pps_cb, 0);
	if (!device.pardev) {
		FUNC8("couldn't register with %s\n", port->name);
		return;
	}

	if (FUNC5(device.pardev) < 0) {
		FUNC8("couldn't claim %s\n", port->name);
		goto err_unregister_dev;
	}

	FUNC9("attached to %s\n", port->name);
	attached = 1;

	FUNC0(&device);

	FUNC1(&device.timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
	device.timer.function = hrtimer_event;
	FUNC2(&device.timer, FUNC4(&device), HRTIMER_MODE_ABS);

	return;

err_unregister_dev:
	FUNC7(device.pardev);
}