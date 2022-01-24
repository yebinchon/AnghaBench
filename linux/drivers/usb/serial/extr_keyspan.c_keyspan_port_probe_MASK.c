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
struct usb_serial_port {int port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct keyspan_serial_private {struct keyspan_device_details* device_details; } ;
struct keyspan_port_private {struct keyspan_port_private** in_buffer; struct keyspan_port_private** out_buffer; struct keyspan_port_private* inack_buffer; struct keyspan_port_private* outcont_buffer; void* outcont_urb; void* inack_urb; void** out_urbs; void** in_urbs; struct keyspan_device_details const* device_details; } ;
struct keyspan_device_details {size_t msg_format; int* indat_endpoints; int indat_endp_flip; int* outdat_endpoints; int outdat_endp_flip; int* inack_endpoints; int* outcont_endpoints; } ;
struct callbacks {int /*<<< orphan*/  outcont_callback; int /*<<< orphan*/  inack_callback; int /*<<< orphan*/  outdat_callback; int /*<<< orphan*/  indat_callback; } ;

/* Variables and functions */
 int FUNC0 (struct keyspan_port_private**) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INACK_BUFLEN ; 
 int IN_BUFLEN ; 
 int OUTCONT_BUFLEN ; 
 int OUT_BUFLEN ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 struct callbacks* keyspan_callbacks ; 
 void* FUNC1 (struct usb_serial*,int,int /*<<< orphan*/ ,struct usb_serial_port*,struct keyspan_port_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct keyspan_port_private*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct keyspan_serial_private* FUNC4 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_serial_port*,struct keyspan_port_private*) ; 

__attribute__((used)) static int FUNC6(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct keyspan_serial_private *s_priv;
	struct keyspan_port_private *p_priv;
	const struct keyspan_device_details *d_details;
	struct callbacks *cback;
	int endp;
	int port_num;
	int i;

	s_priv = FUNC4(serial);
	d_details = s_priv->device_details;

	p_priv = FUNC3(sizeof(*p_priv), GFP_KERNEL);
	if (!p_priv)
		return -ENOMEM;

	for (i = 0; i < FUNC0(p_priv->in_buffer); ++i) {
		p_priv->in_buffer[i] = FUNC3(IN_BUFLEN, GFP_KERNEL);
		if (!p_priv->in_buffer[i])
			goto err_in_buffer;
	}

	for (i = 0; i < FUNC0(p_priv->out_buffer); ++i) {
		p_priv->out_buffer[i] = FUNC3(OUT_BUFLEN, GFP_KERNEL);
		if (!p_priv->out_buffer[i])
			goto err_out_buffer;
	}

	p_priv->inack_buffer = FUNC3(INACK_BUFLEN, GFP_KERNEL);
	if (!p_priv->inack_buffer)
		goto err_inack_buffer;

	p_priv->outcont_buffer = FUNC3(OUTCONT_BUFLEN, GFP_KERNEL);
	if (!p_priv->outcont_buffer)
		goto err_outcont_buffer;

	p_priv->device_details = d_details;

	/* Setup values for the various callback routines */
	cback = &keyspan_callbacks[d_details->msg_format];

	port_num = port->port_number;

	/* Do indat endpoints first, once for each flip */
	endp = d_details->indat_endpoints[port_num];
	for (i = 0; i <= d_details->indat_endp_flip; ++i, ++endp) {
		p_priv->in_urbs[i] = FUNC1(serial, endp,
						USB_DIR_IN, port,
						p_priv->in_buffer[i],
						IN_BUFLEN,
						cback->indat_callback);
	}
	/* outdat endpoints also have flip */
	endp = d_details->outdat_endpoints[port_num];
	for (i = 0; i <= d_details->outdat_endp_flip; ++i, ++endp) {
		p_priv->out_urbs[i] = FUNC1(serial, endp,
						USB_DIR_OUT, port,
						p_priv->out_buffer[i],
						OUT_BUFLEN,
						cback->outdat_callback);
	}
	/* inack endpoint */
	p_priv->inack_urb = FUNC1(serial,
					d_details->inack_endpoints[port_num],
					USB_DIR_IN, port,
					p_priv->inack_buffer,
					INACK_BUFLEN,
					cback->inack_callback);
	/* outcont endpoint */
	p_priv->outcont_urb = FUNC1(serial,
					d_details->outcont_endpoints[port_num],
					USB_DIR_OUT, port,
					p_priv->outcont_buffer,
					OUTCONT_BUFLEN,
					 cback->outcont_callback);

	FUNC5(port, p_priv);

	return 0;

err_outcont_buffer:
	FUNC2(p_priv->inack_buffer);
err_inack_buffer:
	for (i = 0; i < FUNC0(p_priv->out_buffer); ++i)
		FUNC2(p_priv->out_buffer[i]);
err_out_buffer:
	for (i = 0; i < FUNC0(p_priv->in_buffer); ++i)
		FUNC2(p_priv->in_buffer[i]);
err_in_buffer:
	FUNC2(p_priv);

	return -ENOMEM;
}