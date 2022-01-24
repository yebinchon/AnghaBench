#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct usb_serial_port {char* port_number; struct usb_serial* serial; } ;
struct usb_serial {char* num_ports; int /*<<< orphan*/  disc_mutex; TYPE_4__* dev; TYPE_2__* type; } ;
struct seq_file {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_8__ {TYPE_3__ descriptor; } ;
struct TYPE_5__ {scalar_t__ owner; } ;
struct TYPE_6__ {char* description; TYPE_1__ driver; } ;

/* Variables and functions */
 int USB_SERIAL_TTY_MINORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int) ; 
 struct usb_serial_port* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_serial*) ; 

__attribute__((used)) static int FUNC9(struct seq_file *m, void *v)
{
	struct usb_serial *serial;
	struct usb_serial_port *port;
	int i;
	char tmp[40];

	FUNC5(m, "usbserinfo:1.0 driver:2.0\n");
	for (i = 0; i < USB_SERIAL_TTY_MINORS; ++i) {
		port = FUNC7(i);
		if (port == NULL)
			continue;
		serial = port->serial;

		FUNC3(m, "%d:", i);
		if (serial->type->driver.owner)
			FUNC3(m, " module:%s",
				FUNC1(serial->type->driver.owner));
		FUNC3(m, " name:\"%s\"",
				serial->type->description);
		FUNC3(m, " vendor:%04x product:%04x",
			FUNC0(serial->dev->descriptor.idVendor),
			FUNC0(serial->dev->descriptor.idProduct));
		FUNC3(m, " num_ports:%d", serial->num_ports);
		FUNC3(m, " port:%d", port->port_number);
		FUNC6(serial->dev, tmp, sizeof(tmp));
		FUNC3(m, " path:%s", tmp);

		FUNC4(m, '\n');
		FUNC8(serial);
		FUNC2(&serial->disc_mutex);
	}
	return 0;
}