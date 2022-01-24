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
struct usbhsg_gpriv {scalar_t__ driver; } ;
struct usbhs_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBHSG_STATUS_SOFT_CONNECT ; 
 struct usbhsg_gpriv* FUNC0 (struct usbhs_priv*) ; 
 scalar_t__ FUNC1 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usbhs_priv *priv)
{
	struct usbhsg_gpriv *gpriv = FUNC0(priv);

	return gpriv->driver &&
	       FUNC1(gpriv, USBHSG_STATUS_SOFT_CONNECT);
}