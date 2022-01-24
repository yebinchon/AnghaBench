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
struct usbhsg_gpriv {int vbus_active; } ;
struct usbhs_priv {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 struct usbhsg_gpriv* FUNC2 (struct usb_gadget*) ; 
 struct usbhs_priv* FUNC3 (struct usbhsg_gpriv*) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *gadget, int is_active)
{
	struct usbhsg_gpriv *gpriv = FUNC2(gadget);
	struct usbhs_priv *priv = FUNC3(gpriv);
	struct platform_device *pdev = FUNC0(priv);

	gpriv->vbus_active = !!is_active;

	FUNC1(pdev);

	return 0;
}