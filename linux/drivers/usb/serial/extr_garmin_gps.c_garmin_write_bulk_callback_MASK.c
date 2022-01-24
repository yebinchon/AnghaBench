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
struct urb {scalar_t__ transfer_buffer; struct usb_serial_port* context; } ;
struct garmin_data {scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ GARMIN_LAYERID_APPL ; 
 scalar_t__ MODE_GARMIN_SERIAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct garmin_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct garmin_data* FUNC3 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	struct usb_serial_port *port = urb->context;

	if (port) {
		struct garmin_data *garmin_data_p =
					FUNC3(port);

		if (FUNC0(urb->transfer_buffer) == GARMIN_LAYERID_APPL) {

			if (garmin_data_p->mode == MODE_GARMIN_SERIAL) {
				FUNC1(garmin_data_p,
					((__u8 *)urb->transfer_buffer)[4]);
			}
		}
		FUNC4(port);
	}

	/* Ignore errors that resulted from garmin_write_bulk with
	   dismiss_ack = 1 */

	/* free up the transfer buffer, as usb_free_urb() does not do this */
	FUNC2(urb->transfer_buffer);
}