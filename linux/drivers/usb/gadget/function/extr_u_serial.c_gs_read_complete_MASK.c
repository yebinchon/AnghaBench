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
struct usb_request {int /*<<< orphan*/  list; } ;
struct usb_ep {struct gs_port* driver_data; } ;
struct gs_port {int /*<<< orphan*/  port_lock; int /*<<< orphan*/  push; int /*<<< orphan*/  read_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_ep *ep, struct usb_request *req)
{
	struct gs_port	*port = ep->driver_data;

	/* Queue all received data until the tty layer is ready for it. */
	FUNC2(&port->port_lock);
	FUNC0(&req->list, &port->read_queue);
	FUNC1(&port->push, 0);
	FUNC3(&port->port_lock);
}