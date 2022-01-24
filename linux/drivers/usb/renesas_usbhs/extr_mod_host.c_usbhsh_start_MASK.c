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
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_mod {int /*<<< orphan*/  irq_sign; int /*<<< orphan*/  irq_sack; int /*<<< orphan*/  irq_dtch; int /*<<< orphan*/  irq_attch; } ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,struct usbhs_mod*) ; 
 struct usbhs_mod* FUNC5 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_priv*,int) ; 
 int /*<<< orphan*/  usbhsh_dma_map_ctrl ; 
 struct usb_hcd* FUNC9 (struct usbhsh_hpriv*) ; 
 int /*<<< orphan*/  usbhsh_irq_attch ; 
 int /*<<< orphan*/  usbhsh_irq_dtch ; 
 int /*<<< orphan*/  usbhsh_irq_setup_ack ; 
 int /*<<< orphan*/  usbhsh_irq_setup_err ; 
 int /*<<< orphan*/  FUNC10 (struct usbhs_priv*) ; 
 struct usbhsh_hpriv* FUNC11 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC12(struct usbhs_priv *priv)
{
	struct usbhsh_hpriv *hpriv = FUNC11(priv);
	struct usb_hcd *hcd = FUNC9(hpriv);
	struct usbhs_mod *mod = FUNC5(priv);
	struct device *dev = FUNC7(priv);
	int ret;

	/* add hcd */
	ret = FUNC2(hcd, 0, 0);
	if (ret < 0)
		return 0;
	FUNC1(hcd->self.controller);

	/*
	 * pipe initialize and enable DCP
	 */
	FUNC3(priv);
	FUNC6(priv,
			usbhsh_dma_map_ctrl);
	FUNC10(priv);

	/*
	 * system config enble
	 * - HI speed
	 * - host
	 * - usb module
	 */
	FUNC8(priv, 1);

	/*
	 * enable irq callback
	 */
	mod->irq_attch		= usbhsh_irq_attch;
	mod->irq_dtch		= usbhsh_irq_dtch;
	mod->irq_sack		= usbhsh_irq_setup_ack;
	mod->irq_sign		= usbhsh_irq_setup_err;
	FUNC4(priv, mod);

	FUNC0(dev, "start host\n");

	return ret;
}