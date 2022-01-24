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
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int /*<<< orphan*/ ,int,char*,int,void (*) (struct urb*),void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct urb *FUNC3(struct usb_serial_port *port,
				      int endpoint,
				      int dir, void *ctx, char *buf, int len,
				      void (*callback) (struct urb *))
{
	struct usb_serial *serial = port->serial;
	struct urb *urb;

	urb = FUNC0(0, GFP_KERNEL);	/* No ISO */
	if (!urb)
		return NULL;

	FUNC1(urb, serial->dev,
			  FUNC2(serial->dev, endpoint) | dir,
			  buf, len, callback, ctx);

	return urb;
}