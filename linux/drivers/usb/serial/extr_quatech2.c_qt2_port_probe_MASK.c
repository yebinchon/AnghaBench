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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  dev; TYPE_1__** port; } ;
struct qt2_port_private {struct qt2_port_private* write_buffer; int /*<<< orphan*/  write_urb; struct usb_serial_port* port; int /*<<< orphan*/  urb_lock; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  bulk_out_endpointAddress; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QT2_WRITE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct qt2_port_private*) ; 
 struct qt2_port_private* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qt2_port_private* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qt2_write_bulk_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qt2_port_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_serial_port*,struct qt2_port_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct qt2_port_private *port_priv;
	u8 bEndpointAddress;

	port_priv = FUNC2(sizeof(*port_priv), GFP_KERNEL);
	if (!port_priv)
		return -ENOMEM;

	FUNC3(&port_priv->lock);
	FUNC3(&port_priv->urb_lock);
	port_priv->port = port;

	port_priv->write_buffer = FUNC1(QT2_WRITE_BUFFER_SIZE, GFP_KERNEL);
	if (!port_priv->write_buffer)
		goto err_buf;

	port_priv->write_urb = FUNC4(0, GFP_KERNEL);
	if (!port_priv->write_urb)
		goto err_urb;

	bEndpointAddress = serial->port[0]->bulk_out_endpointAddress;
	FUNC5(port_priv->write_urb, serial->dev,
				FUNC7(serial->dev, bEndpointAddress),
				port_priv->write_buffer,
				QT2_WRITE_BUFFER_SIZE,
				qt2_write_bulk_callback, port);

	FUNC6(port, port_priv);

	return 0;
err_urb:
	FUNC0(port_priv->write_buffer);
err_buf:
	FUNC0(port_priv);
	return -ENOMEM;
}