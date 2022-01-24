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
struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int /*<<< orphan*/  port_lock; int /*<<< orphan*/  push; int /*<<< orphan*/  port_num; scalar_t__ port_usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct gs_port		*port = tty->driver_data;
	unsigned long		flags;

	FUNC2(&port->port_lock, flags);
	if (port->port_usb) {
		/* Kickstart read queue processing.  We don't do xon/xoff,
		 * rts/cts, or other handshaking with the host, but if the
		 * read queue backs up enough we'll be NAKing OUT packets.
		 */
		FUNC0("ttyGS%d: unthrottle\n", port->port_num);
		FUNC1(&port->push, 0);
	}
	FUNC3(&port->port_lock, flags);
}