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
struct kobil_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kobil_private*) ; 
 struct kobil_private* FUNC1 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC2(struct usb_serial_port *port)
{
	struct kobil_private *priv;

	priv = FUNC1(port);
	FUNC0(priv);

	return 0;
}