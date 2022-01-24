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
struct edgeport_serial {struct edgeport_serial* bulk_in_buffer; int /*<<< orphan*/  read_urb; struct edgeport_serial* interrupt_in_buffer; int /*<<< orphan*/  interrupt_read_urb; scalar_t__ is_epic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edgeport_serial*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct edgeport_serial* FUNC2 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_serial *serial)
{
	struct edgeport_serial *edge_serial = FUNC2(serial);

	if (edge_serial->is_epic) {
		FUNC3(edge_serial->interrupt_read_urb);
		FUNC1(edge_serial->interrupt_read_urb);
		FUNC0(edge_serial->interrupt_in_buffer);

		FUNC3(edge_serial->read_urb);
		FUNC1(edge_serial->read_urb);
		FUNC0(edge_serial->bulk_in_buffer);
	}

	FUNC0(edge_serial);
}