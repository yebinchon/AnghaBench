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
struct usbhsg_gpriv {int /*<<< orphan*/ * driver; TYPE_1__* transceiver; } ;
struct usbhs_priv {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  USBHSG_STATUS_REGISTERD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usbhsg_gpriv* FUNC2 (struct usb_gadget*) ; 
 struct usbhs_priv* FUNC3 (struct usbhsg_gpriv*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *gadget)
{
	struct usbhsg_gpriv *gpriv = FUNC2(gadget);
	struct usbhs_priv *priv = FUNC3(gpriv);

	FUNC4(priv, USBHSG_STATUS_REGISTERD);

	if (!FUNC0(gpriv->transceiver))
		FUNC1(gpriv->transceiver->otg, NULL);

	gpriv->driver = NULL;

	return 0;
}