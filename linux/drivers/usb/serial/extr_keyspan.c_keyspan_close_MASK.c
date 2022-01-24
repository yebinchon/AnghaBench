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
struct keyspan_port_private {int /*<<< orphan*/ * out_urbs; int /*<<< orphan*/ * in_urbs; int /*<<< orphan*/  inack_urb; scalar_t__ in_flip; scalar_t__ out_flip; scalar_t__ dtr_state; scalar_t__ rts_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct keyspan_port_private* FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_serial_port *port)
{
	int			i;
	struct keyspan_port_private 	*p_priv;

	p_priv = FUNC2(port);

	p_priv->rts_state = 0;
	p_priv->dtr_state = 0;

	FUNC0(port, 2);
	/* pilot-xfer seems to work best with this delay */
	FUNC1(100);

	p_priv->out_flip = 0;
	p_priv->in_flip = 0;

	FUNC3(p_priv->inack_urb);
	for (i = 0; i < 2; i++) {
		FUNC3(p_priv->in_urbs[i]);
		FUNC3(p_priv->out_urbs[i]);
	}
}