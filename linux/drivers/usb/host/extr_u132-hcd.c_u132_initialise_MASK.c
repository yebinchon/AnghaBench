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
struct u132_udev {scalar_t__* endp_number_out; scalar_t__* endp_number_in; scalar_t__ portnumber; scalar_t__ usb_addr; scalar_t__ udev_number; int /*<<< orphan*/ * usb_device; } ;
struct u132_ring {int number; int /*<<< orphan*/  scheduler; int /*<<< orphan*/ * curr_endp; scalar_t__ length; struct u132* u132; } ;
struct u132_port {scalar_t__ Status; scalar_t__ power; scalar_t__ enable; scalar_t__ reset; struct u132* u132; } ;
struct u132_addr {scalar_t__ address; } ;
struct u132 {int /*<<< orphan*/  sw_lock; int /*<<< orphan*/ ** endp; struct u132_udev* udev; struct u132_addr* addr; struct u132_port* port; int /*<<< orphan*/  monitor; struct u132_ring* ring; int /*<<< orphan*/  scheduler_lock; scalar_t__ reset; scalar_t__ power; struct platform_device* platform_dev; int /*<<< orphan*/  board; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_U132_ADDRS ; 
 int MAX_U132_ENDPS ; 
 int MAX_U132_PORTS ; 
 int MAX_U132_RINGS ; 
 int MAX_U132_UDEVS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u132_hcd_monitor_work ; 
 int /*<<< orphan*/  u132_hcd_ring_work_scheduler ; 

__attribute__((used)) static void FUNC6(struct u132 *u132, struct platform_device *pdev)
{
	int rings = MAX_U132_RINGS;
	int ports = MAX_U132_PORTS;
	int addrs = MAX_U132_ADDRS;
	int udevs = MAX_U132_UDEVS;
	int endps = MAX_U132_ENDPS;
	u132->board = FUNC2(&pdev->dev);
	u132->platform_dev = pdev;
	u132->power = 0;
	u132->reset = 0;
	FUNC3(&u132->sw_lock);
	FUNC3(&u132->scheduler_lock);
	while (rings-- > 0) {
		struct u132_ring *ring = &u132->ring[rings];
		ring->u132 = u132;
		ring->number = rings + 1;
		ring->length = 0;
		ring->curr_endp = NULL;
		FUNC1(&ring->scheduler,
				  u132_hcd_ring_work_scheduler);
	}
	FUNC4(&u132->sw_lock);
	FUNC1(&u132->monitor, u132_hcd_monitor_work);
	while (ports-- > 0) {
		struct u132_port *port = &u132->port[ports];
		port->u132 = u132;
		port->reset = 0;
		port->enable = 0;
		port->power = 0;
		port->Status = 0;
	}
	while (addrs-- > 0) {
		struct u132_addr *addr = &u132->addr[addrs];
		addr->address = 0;
	}
	while (udevs-- > 0) {
		struct u132_udev *udev = &u132->udev[udevs];
		int i = FUNC0(udev->endp_number_in);
		int o = FUNC0(udev->endp_number_out);
		udev->usb_device = NULL;
		udev->udev_number = 0;
		udev->usb_addr = 0;
		udev->portnumber = 0;
		while (i-- > 0)
			udev->endp_number_in[i] = 0;

		while (o-- > 0)
			udev->endp_number_out[o] = 0;

	}
	while (endps-- > 0)
		u132->endp[endps] = NULL;

	FUNC5(&u132->sw_lock);
}