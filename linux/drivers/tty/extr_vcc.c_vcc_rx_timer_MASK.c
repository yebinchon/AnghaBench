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
struct vio_driver_state {TYPE_1__* vdev; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct vcc_port {int /*<<< orphan*/  lock; scalar_t__ removed; int /*<<< orphan*/  tty; struct vio_driver_state vio; TYPE_2__ rx_timer; } ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_irq; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vcc_port* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct vcc_port* port ; 
 int /*<<< orphan*/  rx_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct vcc_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct vcc_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vio_driver_state*) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct vcc_port *port = FUNC1(port, t, rx_timer);
	struct vio_driver_state *vio;
	unsigned long flags;
	int rv;

	FUNC2(&port->lock, flags);
	port->rx_timer.expires = 0;

	vio = &port->vio;

	FUNC0(vio->vdev->rx_irq);

	if (!port->tty || port->removed)
		goto done;

	rv = FUNC4(port);
	if (rv == -ECONNRESET)
		FUNC6(vio);

done:
	FUNC3(&port->lock, flags);
	FUNC5(port, false);
}