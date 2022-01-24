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
struct TYPE_2__ {int /*<<< orphan*/  irq_attch; } ;
struct usbhsh_hpriv {TYPE_1__ mod; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_PORT_STAT_CONNECTION ; 
 int USB_PORT_STAT_C_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,TYPE_1__*) ; 
 struct device* FUNC2 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  usbhsh_irq_attch ; 
 int /*<<< orphan*/  FUNC3 (struct usbhsh_hpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhsh_hpriv*,int) ; 
 struct usbhsh_hpriv* FUNC5 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC7(struct usbhs_priv *priv,
			   struct usbhs_irq_state *irq_state)
{
	struct usbhsh_hpriv *hpriv = FUNC5(priv);
	struct device *dev = FUNC2(priv);

	FUNC0(dev, "device detached\n");

	FUNC3(hpriv, USB_PORT_STAT_CONNECTION);
	FUNC4(hpriv, USB_PORT_STAT_C_CONNECTION << 16);

	/*
	 * enable attch interrupt again
	 *
	 * usbhsh_is_running() becomes invalid
	 * according to this process.
	 * see
	 *	usbhsh_is_running()
	 *	usbhsh_urb_enqueue()
	 */
	hpriv->mod.irq_attch = usbhsh_irq_attch;
	FUNC1(priv, &hpriv->mod);

	/*
	 * usbhsh_queue_force_pop_all() should be called
	 * after usbhsh_is_running() becomes invalid.
	 */
	FUNC6(priv);

	return 0;
}