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
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_gadget {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBHSG_STATUS_SOFT_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_priv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,unsigned long) ; 
 struct usbhsg_gpriv* FUNC2 (struct usb_gadget*) ; 
 struct usbhs_priv* FUNC3 (struct usbhsg_gpriv*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *gadget, int is_on)
{
	struct usbhsg_gpriv *gpriv = FUNC2(gadget);
	struct usbhs_priv *priv = FUNC3(gpriv);
	unsigned long flags;

	FUNC0(priv, flags);
	if (is_on)
		FUNC5(gpriv, USBHSG_STATUS_SOFT_CONNECT);
	else
		FUNC4(gpriv, USBHSG_STATUS_SOFT_CONNECT);
	FUNC6(priv);
	FUNC1(priv, flags);

	return 0;
}