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
struct usbhsg_gpriv {int /*<<< orphan*/  gadget; TYPE_1__* driver; } ;
struct usbhs_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  USBHSG_STATUS_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct usbhsg_gpriv* FUNC1 (struct usbhs_priv*) ; 
 int FUNC2 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usbhs_priv *priv)
{
	struct usbhsg_gpriv *gpriv = FUNC1(priv);

	/* cable disconnect */
	if (gpriv->driver &&
	    gpriv->driver->disconnect)
		gpriv->driver->disconnect(&gpriv->gadget);

	return FUNC2(priv, USBHSG_STATUS_STARTED);
}