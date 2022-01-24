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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct usbhsg_gpriv {TYPE_1__ gadget; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_irq_state*) ; 
 struct device* FUNC3 (struct usbhsg_gpriv*) ; 
 struct usbhsg_gpriv* FUNC4 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC5(struct usbhs_priv *priv,
				struct usbhs_irq_state *irq_state)
{
	struct usbhsg_gpriv *gpriv = FUNC4(priv);
	struct device *dev = FUNC3(gpriv);

	gpriv->gadget.speed = FUNC1(priv);

	FUNC0(dev, "state = %x : speed : %d\n",
		FUNC2(irq_state),
		gpriv->gadget.speed);

	return 0;
}