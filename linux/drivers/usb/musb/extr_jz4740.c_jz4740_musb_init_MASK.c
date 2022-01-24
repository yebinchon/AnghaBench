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
struct musb {int dyn_fifo; int /*<<< orphan*/  isr; int /*<<< orphan*/  xceiv; TYPE_1__* controller; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_2__ {struct device* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jz4740_musb_interrupt ; 

__attribute__((used)) static int FUNC5(struct musb *musb)
{
	struct device *dev = musb->controller->parent;

	if (dev->of_node)
		musb->xceiv = FUNC4(dev, "phys", 0);
	else
		musb->xceiv = FUNC3(dev, USB_PHY_TYPE_USB2);
	if (FUNC0(musb->xceiv)) {
		FUNC2(dev, "No transceiver configured\n");
		return FUNC1(musb->xceiv);
	}

	/* Silicon does not implement ConfigData register.
	 * Set dyn_fifo to avoid reading EP config from hardware.
	 */
	musb->dyn_fifo = true;

	musb->isr = jz4740_musb_interrupt;

	return 0;
}