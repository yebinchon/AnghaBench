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
struct f81534_port_private {int /*<<< orphan*/  lsr_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct f81534_port_private* FUNC1 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC2(struct usb_serial_port *port)
{
	struct f81534_port_private *port_priv = FUNC1(port);

	FUNC0(&port_priv->lsr_work);
	return 0;
}