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
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_serial_port*,char const*) ; 
 scalar_t__ FUNC1 (struct usb_serial*,char const*) ; 

__attribute__((used)) static struct usb_serial *FUNC2(struct usb_serial_port *port,
						 const char *function)
{
	/* if no port was specified, or it fails a paranoia check */
	if (!port ||
	    FUNC0(port, function) ||
	    FUNC1(port->serial, function)) {
		/* then say that we don't have a valid usb_serial thing,
		 * which will end up genrating -ENODEV return values */
		return NULL;
	}

	return port->serial;
}