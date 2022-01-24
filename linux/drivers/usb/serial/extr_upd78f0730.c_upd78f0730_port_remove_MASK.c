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
struct usb_serial_port {int dummy; } ;
struct upd78f0730_port_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct upd78f0730_port_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct upd78f0730_port_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port)
{
	struct upd78f0730_port_private *private;

	private = FUNC2(port);
	FUNC1(&private->lock);
	FUNC0(private);

	return 0;
}