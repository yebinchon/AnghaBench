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
struct usb_cdc_line_coding {int dummy; } ;
struct gs_port {unsigned int port_num; struct usb_cdc_line_coding port_line_coding; int /*<<< orphan*/  write_pool; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  read_pool; int /*<<< orphan*/  push; int /*<<< orphan*/  close_wait; int /*<<< orphan*/  drain_wait; int /*<<< orphan*/  port_lock; int /*<<< orphan*/  port; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct gs_port* port; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gs_rx_push ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gs_port* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ports ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(unsigned port_num, struct usb_cdc_line_coding *coding)
{
	struct gs_port	*port;
	int		ret = 0;

	FUNC4(&ports[port_num].lock);
	if (ports[port_num].port) {
		ret = -EBUSY;
		goto out;
	}

	port = FUNC3(sizeof(struct gs_port), GFP_KERNEL);
	if (port == NULL) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC7(&port->port);
	FUNC6(&port->port_lock);
	FUNC2(&port->drain_wait);
	FUNC2(&port->close_wait);

	FUNC0(&port->push, gs_rx_push);

	FUNC1(&port->read_pool);
	FUNC1(&port->read_queue);
	FUNC1(&port->write_pool);

	port->port_num = port_num;
	port->port_line_coding = *coding;

	ports[port_num].port = port;
out:
	FUNC5(&ports[port_num].lock);
	return ret;
}