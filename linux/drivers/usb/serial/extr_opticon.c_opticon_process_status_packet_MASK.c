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
struct opticon_private {int cts; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct opticon_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC3(struct usb_serial_port *port,
					const unsigned char *buf, size_t len)
{
	struct opticon_private *priv = FUNC2(port);
	unsigned long flags;

	FUNC0(&priv->lock, flags);
	if (buf[0] == 0x00)
		priv->cts = false;
	else
		priv->cts = true;
	FUNC1(&priv->lock, flags);
}