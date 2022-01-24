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
struct symbol_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct symbol_private* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*,struct symbol_private*) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port)
{
	struct symbol_private *priv;

	priv = FUNC0(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC1(&priv->lock);

	FUNC2(port, priv);

	return 0;
}