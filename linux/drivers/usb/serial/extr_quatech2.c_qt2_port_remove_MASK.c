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
struct qt2_port_private {struct qt2_port_private* write_buffer; int /*<<< orphan*/  write_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qt2_port_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct qt2_port_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port)
{
	struct qt2_port_private *port_priv;

	port_priv = FUNC2(port);
	FUNC1(port_priv->write_urb);
	FUNC0(port_priv->write_buffer);
	FUNC0(port_priv);

	return 0;
}