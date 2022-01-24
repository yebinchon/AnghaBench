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
struct gserial {int /*<<< orphan*/  in; int /*<<< orphan*/  out; struct gs_port* ioport; int /*<<< orphan*/  port_line_coding; } ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ tty; } ;
struct gs_port {int /*<<< orphan*/  port_lock; scalar_t__ write_started; scalar_t__ write_allocated; scalar_t__ read_started; scalar_t__ read_allocated; int /*<<< orphan*/  write_pool; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  read_pool; int /*<<< orphan*/  port_write_buf; scalar_t__ openclose; TYPE_1__ port; int /*<<< orphan*/  drain_wait; int /*<<< orphan*/ * port_usb; int /*<<< orphan*/  port_line_coding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct gserial *gser)
{
	struct gs_port	*port = gser->ioport;
	unsigned long	flags;

	if (!port)
		return;

	/* tell the TTY glue not to do I/O here any more */
	FUNC3(&port->port_lock, flags);

	/* REVISIT as above: how best to track this? */
	port->port_line_coding = gser->port_line_coding;

	port->port_usb = NULL;
	gser->ioport = NULL;
	if (port->port.count > 0 || port->openclose) {
		FUNC7(&port->drain_wait);
		if (port->port.tty)
			FUNC5(port->port.tty);
	}
	FUNC4(&port->port_lock, flags);

	/* disable endpoints, aborting down any active I/O */
	FUNC6(gser->out);
	FUNC6(gser->in);

	/* finally, free any unused/unusable I/O buffers */
	FUNC3(&port->port_lock, flags);
	if (port->port.count == 0 && !port->openclose)
		FUNC2(&port->port_write_buf);
	FUNC1(gser->out, &port->read_pool, NULL);
	FUNC1(gser->out, &port->read_queue, NULL);
	FUNC1(gser->in, &port->write_pool, NULL);

	port->read_allocated = port->read_started =
		port->write_allocated = port->write_started = 0;

	FUNC0(gser->in);
	FUNC4(&port->port_lock, flags);
}