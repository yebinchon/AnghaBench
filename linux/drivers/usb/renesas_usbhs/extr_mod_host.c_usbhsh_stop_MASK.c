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
struct usbhs_mod {int /*<<< orphan*/ * irq_sign; int /*<<< orphan*/ * irq_sack; int /*<<< orphan*/ * irq_dtch; int /*<<< orphan*/ * irq_attch; } ;
struct usb_hcd {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,struct usbhs_mod*) ; 
 struct usbhs_mod* FUNC3 (struct usbhs_priv*) ; 
 struct device* FUNC4 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC6 (struct usbhsh_hpriv*) ; 
 struct usbhsh_hpriv* FUNC7 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC8(struct usbhs_priv *priv)
{
	struct usbhsh_hpriv *hpriv = FUNC7(priv);
	struct usb_hcd *hcd = FUNC6(hpriv);
	struct usbhs_mod *mod = FUNC3(priv);
	struct device *dev = FUNC4(priv);

	/*
	 * disable irq callback
	 */
	mod->irq_attch	= NULL;
	mod->irq_dtch	= NULL;
	mod->irq_sack	= NULL;
	mod->irq_sign	= NULL;
	FUNC2(priv, mod);

	FUNC1(hcd);

	/* disable sys */
	FUNC5(priv, 0);

	FUNC0(dev, "quit host\n");

	return 0;
}