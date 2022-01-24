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
struct usb_serial {int dummy; } ;
struct edgeport_serial {int /*<<< orphan*/  read_urb; int /*<<< orphan*/  interrupt_read_urb; scalar_t__ is_epic; } ;

/* Variables and functions */
 struct edgeport_serial* FUNC0 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_serial *serial)
{
	struct edgeport_serial *edge_serial = FUNC0(serial);

	if (edge_serial->is_epic) {
		FUNC1(edge_serial->interrupt_read_urb);
		FUNC1(edge_serial->read_urb);
	}
}