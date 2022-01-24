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
struct usbhsg_gpriv {struct usbhsg_gpriv* uep; int /*<<< orphan*/  gadget; } ;
struct usbhs_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhsg_gpriv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usbhsg_gpriv* FUNC2 (struct usbhs_priv*) ; 

void FUNC3(struct usbhs_priv *priv)
{
	struct usbhsg_gpriv *gpriv = FUNC2(priv);

	FUNC1(&gpriv->gadget);

	FUNC0(gpriv->uep);
	FUNC0(gpriv);
}