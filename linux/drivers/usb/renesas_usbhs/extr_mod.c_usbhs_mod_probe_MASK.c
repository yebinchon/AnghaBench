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
struct usbhs_priv {int /*<<< orphan*/  irqflags; int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usbhs_priv*) ; 
 int /*<<< orphan*/  usbhs_interrupt ; 
 int FUNC3 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*) ; 
 int FUNC5 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_priv*) ; 
 struct device* FUNC7 (struct usbhs_priv*) ; 

int FUNC8(struct usbhs_priv *priv)
{
	struct device *dev = FUNC7(priv);
	int ret;

	/*
	 * install host/gadget driver
	 */
	ret = FUNC5(priv);
	if (ret < 0)
		return ret;

	ret = FUNC3(priv);
	if (ret < 0)
		goto mod_init_host_err;

	/* irq settings */
	ret = FUNC2(dev, priv->irq, usbhs_interrupt,
			  priv->irqflags, FUNC1(dev), priv);
	if (ret) {
		FUNC0(dev, "irq request err\n");
		goto mod_init_gadget_err;
	}

	return ret;

mod_init_gadget_err:
	FUNC4(priv);
mod_init_host_err:
	FUNC6(priv);

	return ret;
}