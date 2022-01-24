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
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC1 (struct usbhsh_hpriv*) ; 
 struct usbhsh_hpriv* FUNC2 (struct usbhs_priv*) ; 

int FUNC3(struct usbhs_priv *priv)
{
	struct usbhsh_hpriv *hpriv = FUNC2(priv);
	struct usb_hcd *hcd = FUNC1(hpriv);

	FUNC0(hcd);

	return 0;
}