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
struct keyspan_port_private {struct keyspan_port_private** in_buffer; struct keyspan_port_private** out_buffer; struct keyspan_port_private* inack_buffer; struct keyspan_port_private* outcont_buffer; int /*<<< orphan*/ * out_urbs; int /*<<< orphan*/ * in_urbs; int /*<<< orphan*/  outcont_urb; int /*<<< orphan*/  inack_urb; } ;

/* Variables and functions */
 int FUNC0 (struct keyspan_port_private**) ; 
 int /*<<< orphan*/  FUNC1 (struct keyspan_port_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct keyspan_port_private* FUNC3 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port)
{
	struct keyspan_port_private *p_priv;
	int i;

	p_priv = FUNC3(port);

	FUNC4(p_priv->inack_urb);
	FUNC4(p_priv->outcont_urb);
	for (i = 0; i < 2; i++) {
		FUNC4(p_priv->in_urbs[i]);
		FUNC4(p_priv->out_urbs[i]);
	}

	FUNC2(p_priv->inack_urb);
	FUNC2(p_priv->outcont_urb);
	for (i = 0; i < 2; i++) {
		FUNC2(p_priv->in_urbs[i]);
		FUNC2(p_priv->out_urbs[i]);
	}

	FUNC1(p_priv->outcont_buffer);
	FUNC1(p_priv->inack_buffer);
	for (i = 0; i < FUNC0(p_priv->out_buffer); ++i)
		FUNC1(p_priv->out_buffer[i]);
	for (i = 0; i < FUNC0(p_priv->in_buffer); ++i)
		FUNC1(p_priv->in_buffer[i]);

	FUNC1(p_priv);

	return 0;
}