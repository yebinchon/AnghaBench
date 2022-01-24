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
struct TYPE_2__ {int /*<<< orphan*/ * irq_attch; } ;
struct usbhsh_hpriv {TYPE_1__ mod; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int USB_PORT_STAT_CONNECTION ; 
 int USB_PORT_STAT_C_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,TYPE_1__*) ; 
 struct device* FUNC2 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhsh_hpriv*,int) ; 
 struct usbhsh_hpriv* FUNC4 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC5(struct usbhs_priv *priv,
			    struct usbhs_irq_state *irq_state)
{
	struct usbhsh_hpriv *hpriv = FUNC4(priv);
	struct device *dev = FUNC2(priv);

	FUNC0(dev, "device attached\n");

	FUNC3(hpriv, USB_PORT_STAT_CONNECTION);
	FUNC3(hpriv, USB_PORT_STAT_C_CONNECTION << 16);

	/*
	 * attch interrupt might happen infinitely on some device
	 * (on self power USB hub ?)
	 * disable it here.
	 *
	 * usbhsh_is_running() becomes effective
	 * according to this process.
	 * see
	 *	usbhsh_is_running()
	 *	usbhsh_urb_enqueue()
	 */
	hpriv->mod.irq_attch = NULL;
	FUNC1(priv, &hpriv->mod);

	return 0;
}