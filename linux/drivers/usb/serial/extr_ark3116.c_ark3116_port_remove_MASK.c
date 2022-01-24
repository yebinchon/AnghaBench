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
struct ark3116_private {int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ark3116_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ark3116_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port)
{
	struct ark3116_private *priv = FUNC2(port);

	/* device is closed, so URBs and DMA should be down */
	FUNC1(&priv->hw_lock);
	FUNC0(priv);

	return 0;
}