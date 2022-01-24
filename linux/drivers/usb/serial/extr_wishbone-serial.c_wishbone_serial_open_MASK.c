#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {TYPE_2__* serial; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct usb_serial_port*,int) ; 
 int FUNC2 (struct tty_struct*,struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty,
				struct usb_serial_port *port)
{
	int retval;

	retval = FUNC1(port, 1);
	if (retval) {
		FUNC0(&port->serial->dev->dev,
		       "Could not mark device as open (%d)\n",
		       retval);
		return retval;
	}

	retval = FUNC2(tty, port);
	if (retval)
		FUNC1(port, 0);

	return retval;
}