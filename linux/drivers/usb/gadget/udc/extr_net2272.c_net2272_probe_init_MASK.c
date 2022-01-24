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
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  max_speed; int /*<<< orphan*/ * ops; } ;
struct net2272 {unsigned int irq; TYPE_1__ gadget; struct device* dev; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct net2272* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  driver_name ; 
 struct net2272* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net2272_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net2272 *FUNC4(struct device *dev, unsigned int irq)
{
	struct net2272 *ret;

	if (!irq) {
		FUNC1(dev, "No IRQ!\n");
		return FUNC0(-ENODEV);
	}

	/* alloc, and start init */
	ret = FUNC2(sizeof(*ret), GFP_KERNEL);
	if (!ret)
		return FUNC0(-ENOMEM);

	FUNC3(&ret->lock);
	ret->irq = irq;
	ret->dev = dev;
	ret->gadget.ops = &net2272_ops;
	ret->gadget.max_speed = USB_SPEED_HIGH;

	/* the "gadget" abstracts/virtualizes the controller */
	ret->gadget.name = driver_name;

	return ret;
}