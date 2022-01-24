#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct vio_dev {TYPE_2__ dev; } ;
struct TYPE_4__ {struct vcc_port* name; int /*<<< orphan*/  timer; } ;
struct vcc_port {int removed; struct vcc_port* domain; TYPE_1__ vio; int /*<<< orphan*/  index; scalar_t__ tty; int /*<<< orphan*/  tx_timer; int /*<<< orphan*/  rx_timer; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vcc_port* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vcc_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  vcc_attribute_group ; 
 struct vcc_port* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vcc_port*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vcc_tty_driver ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct vio_dev *vdev)
{
	struct vcc_port *port = FUNC2(&vdev->dev);

	if (!port)
		return -ENODEV;

	FUNC1(&port->rx_timer);
	FUNC1(&port->tx_timer);

	/* If there's a process with the device open, do a synchronous
	 * hangup of the TTY. This *may* cause the process to call close
	 * asynchronously, but it's not guaranteed.
	 */
	if (port->tty)
		FUNC7(port->tty);

	/* Get exclusive reference to VCC, ensures that there are no other
	 * clients to this port
	 */
	port = FUNC8(port->index, true);

	if (FUNC0(!port))
		return -ENODEV;

	FUNC6(vcc_tty_driver, port->index);

	FUNC1(&port->vio.timer);
	FUNC11(&port->vio);
	FUNC5(&vdev->dev.kobj, &vcc_attribute_group);
	FUNC3(&vdev->dev, NULL);
	if (port->tty) {
		port->removed = true;
		FUNC9(port, true);
	} else {
		FUNC10(port->index);

		FUNC4(port->vio.name);
		FUNC4(port->domain);
		FUNC4(port);
	}

	return 0;
}