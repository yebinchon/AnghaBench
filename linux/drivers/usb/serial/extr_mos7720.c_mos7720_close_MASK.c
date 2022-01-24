#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {int /*<<< orphan*/  port_number; TYPE_1__* read_urb; TYPE_1__* write_urb; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct moschip_port {scalar_t__ open; TYPE_1__** write_urb_pool; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOS7720_IER ; 
 int /*<<< orphan*/  MOS7720_MCR ; 
 int NUM_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct moschip_port* FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct usb_serial_port *port)
{
	struct usb_serial *serial;
	struct moschip_port *mos7720_port;
	int j;

	serial = port->serial;

	mos7720_port = FUNC2(port);
	if (mos7720_port == NULL)
		return;

	for (j = 0; j < NUM_URBS; ++j)
		FUNC3(mos7720_port->write_urb_pool[j]);

	/* Freeing Write URBs */
	for (j = 0; j < NUM_URBS; ++j) {
		if (mos7720_port->write_urb_pool[j]) {
			FUNC0(mos7720_port->write_urb_pool[j]->transfer_buffer);
			FUNC1(mos7720_port->write_urb_pool[j]);
		}
	}

	/* While closing port, shutdown all bulk read, write  *
	 * and interrupt read if they exists, otherwise nop   */
	FUNC3(port->write_urb);
	FUNC3(port->read_urb);

	FUNC4(serial, port->port_number, MOS7720_MCR, 0x00);
	FUNC4(serial, port->port_number, MOS7720_IER, 0x00);

	mos7720_port->open = 0;
}