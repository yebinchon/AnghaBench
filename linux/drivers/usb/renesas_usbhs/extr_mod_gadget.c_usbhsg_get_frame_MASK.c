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
 int FUNC0 (struct usbhs_priv*) ; 
 struct usbhsg_gpriv* FUNC1 (struct usb_gadget*) ; 
 struct usbhs_priv* FUNC2 (struct usbhsg_gpriv*) ; 

__attribute__((used)) static int FUNC3(struct usb_gadget *gadget)
{
	struct usbhsg_gpriv *gpriv = FUNC1(gadget);
	struct usbhs_priv *priv = FUNC2(gpriv);

	return FUNC0(priv);
}