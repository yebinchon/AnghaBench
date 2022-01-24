#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_wwan_port_private {int /*<<< orphan*/  out_busy; struct urb** out_urbs; } ;
struct usb_wwan_intf_private {int /*<<< orphan*/  susp_lock; int /*<<< orphan*/  in_flight; } ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct urb {struct usb_serial_port* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  interface; } ;

/* Variables and functions */
 int N_OUT_URB ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_wwan_intf_private* FUNC5 (TYPE_1__*) ; 
 struct usb_wwan_port_private* FUNC6 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct usb_serial_port *port;
	struct usb_wwan_port_private *portdata;
	struct usb_wwan_intf_private *intfdata;
	unsigned long flags;
	int i;

	port = urb->context;
	intfdata = FUNC5(port->serial);

	FUNC7(port);
	FUNC4(port->serial->interface);
	portdata = FUNC6(port);
	FUNC2(&intfdata->susp_lock, flags);
	intfdata->in_flight--;
	FUNC3(&intfdata->susp_lock, flags);

	for (i = 0; i < N_OUT_URB; ++i) {
		if (portdata->out_urbs[i] == urb) {
			FUNC1();
			FUNC0(i, &portdata->out_busy);
			break;
		}
	}
}